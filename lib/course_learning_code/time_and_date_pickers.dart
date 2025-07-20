import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Time(),
    ));

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  DateTime? date = DateTime(2023);

  Future<void> timing() async {
    TimeOfDay? newTime =
        await showTimePicker(context: context, initialTime: time!);
    setState(() {
      time = newTime;
    });
  }

  Future<void> day() async {
    DateTime? newDate = await showDatePicker(
        context: context, firstDate: DateTime(1970), lastDate: DateTime(2090));
    if (newDate != null) {
      setState(() {
        date = newDate;
      });
    }
  }

  void reset() {
    setState(() {
      time = const TimeOfDay(hour: 12, minute: 12);
      date = DateTime(2023); // Reset the date to January 1, 2023, for example
    });
  }

  @override
  Widget build(BuildContext context) {
    Color timeColor = time!.hour < 12 ? Colors.green : Colors.red;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${time!.hour.toString().padLeft(2, '0')} - ${time!.minute.toString().padLeft(2, '0')}",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: timeColor),
              ),
              Text(
                "${date!.day}/${date!.month}/${date!.year}",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filled(
                    onPressed: timing,
                    icon: const Icon(Icons.alarm),
                  ),
                  const SizedBox(width: 10),
                  IconButton.filled(
                    onPressed: reset,
                    icon: const Icon(Icons.restart_alt),
                  ),
                  const SizedBox(width: 10),
                  IconButton.filled(
                    onPressed: day,
                    icon: const Icon(Icons.calendar_month),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
