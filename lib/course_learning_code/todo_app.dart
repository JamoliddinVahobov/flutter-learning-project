import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
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
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const TodoScreen(),
    );
  }
}

class Todo {
  String title;
  DateTime createdAt;
  bool isSelected;

  Todo({
    required this.title,
    required this.createdAt,
    this.isSelected = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'createdAt': createdAt.toIso8601String(),
      'isSelected': isSelected,
    };
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      createdAt: DateTime.parse(json['createdAt']),
      isSelected: json['isSelected'] ?? false,
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];
  bool selectMode = false;
  bool allSelected = false;
  final TextEditingController _controller = TextEditingController();
  final DateFormat _timeFormat = DateFormat('MMM d, y - hh:mm:ss a');

  @override
  void initState() {
    super.initState();
    loadTodos();
  }

  Future<void> loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final String? todosJson = prefs.getString('todos');
    if (todosJson != null) {
      final List<dynamic> decoded = jsonDecode(todosJson);
      setState(() {
        todos = decoded.map((item) => Todo.fromJson(item)).toList();
      });
    }
  }

  Future<void> saveTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final String encoded =
        jsonEncode(todos.map((todo) => todo.toJson()).toList());
    await prefs.setString('todos', encoded);
  }

  void addTodo(String title) {
    setState(() {
      todos.add(Todo(
        title: title,
        createdAt: DateTime.now(),
      ));
      saveTodos();
    });
  }

  void deleteTodo(int index) {
    setState(() {
      todos.removeAt(index);
      saveTodos();
    });
  }

  void deleteSelectedTodos() {
    setState(() {
      todos.removeWhere((todo) => todo.isSelected);
      selectMode = false;
      saveTodos();
    });
  }

  void toggleSelectMode() {
    setState(() {
      selectMode = !selectMode;
      if (!selectMode) {
        for (var todo in todos) {
          todo.isSelected = false;
        }
        allSelected = false;
      }
    });
  }

  void toggleSelectAll() {
    setState(() {
      allSelected = !allSelected;
      for (var todo in todos) {
        todo.isSelected = allSelected;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo App',
        ),
        backgroundColor: Colors.orangeAccent,
        actions: [
          if (todos.isNotEmpty)
            IconButton(
              icon: Icon(selectMode ? Icons.close : Icons.select_all),
              onPressed: toggleSelectMode,
            ),
          if (selectMode)
            IconButton(
              icon: Icon(allSelected ? Icons.deselect : Icons.select_all),
              onPressed: toggleSelectAll,
            ),
          if (selectMode)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: deleteSelectedTodos,
            ),
        ],
      ),
      body: todos.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.note_alt_outlined, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'No todos yet!\nAdd your first todo by tapping the + button.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return Slidable(
                  enabled: !selectMode,
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (_) => deleteTodo(index),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: selectMode
                        ? Checkbox(
                            value: todo.isSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                todo.isSelected = value ?? false;
                                allSelected = todos.every((t) => t.isSelected);
                              });
                            },
                          )
                        : null,
                    title: Text(todo.title),
                    subtitle: Text(
                      'Saved at ${_timeFormat.format(todo.createdAt.toLocal())}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Add Todo'),
              content: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter your todo here',
                ),
                autofocus: true,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _controller.clear();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      addTodo(_controller.text);
                      Navigator.pop(context);
                      _controller.clear();
                    }
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
