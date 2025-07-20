import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Debt Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DebtTrackerScreen(),
    );
  }
}

class Debt {
  String id;
  String personName;
  double amount;
  String currency;

  Debt({
    String? id,
    required this.personName,
    required this.amount,
    required this.currency,
  }) : id = id ?? DateTime.now().millisecondsSinceEpoch.toString();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'personName': personName,
      'amount': amount,
      'currency': currency,
    };
  }

  factory Debt.fromJson(Map<String, dynamic> json) {
    return Debt(
      id: json['id'],
      personName: json['personName'],
      amount: json['amount'].toDouble(),
      currency: json['currency'],
    );
  }
}

class DebtTrackerScreen extends StatefulWidget {
  const DebtTrackerScreen({super.key});

  @override
  State<DebtTrackerScreen> createState() => _DebtTrackerScreenState();
}

class _DebtTrackerScreenState extends State<DebtTrackerScreen> {
  List<Debt> debts = [];
  Set<String> selectedDebts = {};
  bool isSelectionMode = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  double totalDebtAmount = 0;

  @override
  void initState() {
    super.initState();
    _loadDebts();
  }

  Future<void> _loadDebts() async {
    final prefs = await SharedPreferences.getInstance();
    final debtsJson = prefs.getStringList('debts') ?? [];
    final savedTotalDebt = prefs.getDouble('totalDebt') ?? 0.0;
    setState(() {
      debts = debtsJson.map((debt) => Debt.fromJson(jsonDecode(debt))).toList();
      totalDebtAmount = savedTotalDebt;
    });
  }

  Future<void> _saveDebts() async {
    final prefs = await SharedPreferences.getInstance();
    final debtsJson = debts.map((debt) => jsonEncode(debt.toJson())).toList();
    await prefs.setStringList('debts', debtsJson);
    await prefs.setDouble('totalDebt', totalDebtAmount);
  }

  void _calculateTotalDebt() {
    totalDebtAmount = debts.fold(0, (sum, debt) => sum + debt.amount);
  }

  void _toggleSelection(String debtId) {
    setState(() {
      if (selectedDebts.contains(debtId)) {
        selectedDebts.remove(debtId);
      } else {
        selectedDebts.add(debtId);
      }

      if (selectedDebts.isEmpty) {
        isSelectionMode = false;
      }
    });
  }

  void _toggleSelectAll() {
    setState(() {
      if (selectedDebts.length == debts.length) {
        selectedDebts.clear();
        isSelectionMode = false;
      } else {
        selectedDebts = debts.map((debt) => debt.id).toSet();
      }
    });
  }

  Future<void> _deleteSelected() async {
    if (selectedDebts.isEmpty) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Selected Debts'),
        content: Text(
            'Are you sure you want to delete ${selectedDebts.length} selected debt(s)?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      setState(() {
        debts.removeWhere((debt) => selectedDebts.contains(debt.id));
        selectedDebts.clear();
        isSelectionMode = false;
        _calculateTotalDebt();
      });
      await _saveDebts();
    }
  }

  Future<void> _deleteAll() async {
    if (debts.isEmpty) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete All Debts'),
        content:
            Text('Are you sure you want to delete all ${debts.length} debts?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child:
                const Text('Delete All', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      setState(() {
        debts.clear();
        selectedDebts.clear();
        isSelectionMode = false;
        totalDebtAmount = 0;
      });
      await _saveDebts();
    }
  }

  void _showDebtDialog({Debt? debt}) {
    if (debt != null) {
      _nameController.text = debt.personName;
      _amountController.text = debt.amount.toString();
      _currencyController.text = debt.currency;
    } else {
      _nameController.clear();
      _amountController.clear();
      _currencyController.clear();
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(debt == null ? 'Add New Debt' : 'Edit Debt'),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Person Name',
                  hintText: 'Enter the name of the person',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      controller: _amountController,
                      decoration: const InputDecoration(
                        labelText: 'Amount',
                        hintText: 'Enter the amount',
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an amount';
                        }
                        if (double.tryParse(value) == null) {
                          return 'Please enter a valid number';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: _currencyController,
                      decoration: const InputDecoration(
                        labelText: 'Currency',
                        hintText: 'USD...',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                final newAmount = double.parse(_amountController.text);
                setState(() {
                  if (debt == null) {
                    debts.add(
                      Debt(
                        personName: _nameController.text,
                        amount: newAmount,
                        currency: _currencyController.text,
                      ),
                    );
                    totalDebtAmount += newAmount;
                  } else {
                    final index = debts.indexWhere((d) => d.id == debt.id);
                    if (index != -1) {
                      totalDebtAmount -= debts[index].amount;
                      totalDebtAmount += newAmount;
                      debts[index] = Debt(
                        id: debt.id,
                        personName: _nameController.text,
                        amount: newAmount,
                        currency: _currencyController.text,
                      );
                    }
                  }
                });
                await _saveDebts();
                if (mounted) {
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                }
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Future<void> _deleteDebt(Debt debt) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Debt'),
        content: Text(
            'Are you sure you want to delete the debt for ${debt.personName}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      setState(() {
        debts.removeWhere((d) => d.id == debt.id);
        totalDebtAmount -= debt.amount;
      });
      await _saveDebts();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    _currencyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debt Tracker'),
        actions: [
          if (debts.isNotEmpty) ...[
            if (isSelectionMode) ...[
              IconButton(
                icon: Icon(
                  selectedDebts.length == debts.length
                      ? Icons.select_all
                      : Icons.deselect,
                ),
                onPressed: _toggleSelectAll,
                tooltip: selectedDebts.length == debts.length
                    ? 'Deselect All'
                    : 'Select All',
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: selectedDebts.isNotEmpty ? _deleteSelected : null,
                tooltip: 'Delete Selected',
              ),
            ] else ...[
              IconButton(
                icon: const Icon(Icons.select_all),
                onPressed: () {
                  setState(() {
                    isSelectionMode = true;
                  });
                },
                tooltip: 'Select Mode',
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'deleteAll',
                    child: Text('Delete All'),
                  ),
                ],
                onSelected: (value) {
                  if (value == 'deleteAll') {
                    _deleteAll();
                  }
                },
              ),
            ],
          ],
        ],
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(16),
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Debt:',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    '${totalDebtAmount.toStringAsFixed(2)} ${debts.isNotEmpty ? debts.first.currency : ''}',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: debts.length,
              itemBuilder: (context, index) {
                final debt = debts[index];
                return Dismissible(
                  key: Key(debt.id),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) => _deleteDebt(debt),
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                    color: Colors.amber,
                    elevation: 5,
                    child: ListTile(
                      leading: isSelectionMode
                          ? Checkbox(
                              value: selectedDebts.contains(debt.id),
                              onChanged: (_) => _toggleSelection(debt.id),
                            )
                          : null,
                      title: Text(debt.personName),
                      subtitle: Text(
                        'Amount: ${debt.amount.toStringAsFixed(2)} ${debt.currency}',
                      ),
                      trailing: isSelectionMode
                          ? null
                          : IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () => _showDebtDialog(debt: debt),
                            ),
                      onTap: isSelectionMode
                          ? () => _toggleSelection(debt.id)
                          : null,
                      onLongPress: () {
                        if (!isSelectionMode) {
                          setState(() {
                            isSelectionMode = true;
                            selectedDebts.add(debt.id);
                          });
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showDebtDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
