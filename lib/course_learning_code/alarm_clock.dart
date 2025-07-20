// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const AlarmClockApp());
}

class AlarmClockApp extends StatelessWidget {
  const AlarmClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlarmScreen(),
    );
  }
}

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});

  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  Duration? _selectedDuration;
  String _formattedTime = 'No alarm set';
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isAlarmSet = false;
  bool _isAlarmPlaying = false;

  @override
  void initState() {
    super.initState();
    checkTime();
  }

  Future<void> _selectDuration(BuildContext context) async {
    // Show the time picker and get the selected time as CustomTime
    final CustomTime? picked = await showTheTimePicker(
      context: context,
      initialTime: CustomTime(hours: 0, minutes: 0, seconds: 0),
    );

    // Check if a time was picked and convert it to Duration
    if (picked != null) {
      // Convert CustomTime to Duration
      final Duration newDuration = Duration(
        hours: picked.hours,
        minutes: picked.minutes,
        seconds: picked.seconds, // Now include seconds
      );

      // Update the state if the picked time is different
      if (newDuration != _selectedDuration) {
        setState(() {
          _selectedDuration = newDuration; // Set the new duration
          _formattedTime = '${newDuration.inHours.toString().padLeft(2, '0')}:'
              '${(newDuration.inMinutes % 60).toString().padLeft(2, '0')}:'
              '${(newDuration.inSeconds % 60).toString().padLeft(2, '0')}';
          _isAlarmSet = true;
          _isAlarmPlaying = false;
        });
      }
    }
  }

  // Method to check time periodically, including seconds
  void checkTime() {
    Future.delayed(const Duration(seconds: 1), () {
      final now = DateTime.now();
      final nowDuration = Duration(
        hours: now.hour,
        minutes: now.minute,
        seconds: now.second,
      );

      if (_selectedDuration != null &&
          nowDuration.inSeconds == _selectedDuration!.inSeconds &&
          _isAlarmSet) {
        _playAlarm();
      }
      checkTime(); // Keep checking time periodically
    });
  }

  // Method to play the alarm sound
  void _playAlarm() async {
    await _audioPlayer.play(AssetSource('alarm.mp3'));
    setState(() {
      _isAlarmSet = false; // Reset alarm setting
      _isAlarmPlaying = true; // Indicate that the alarm is playing
    });
  }

  // Method to stop the alarm sound
  void _stopAlarm() async {
    await _audioPlayer.stop();
    setState(() {
      _isAlarmPlaying = false; // Stop showing the stop button
    });
  }

  // Method to cancel the alarm before it rings
  void _cancelAlarm() {
    setState(() {
      _selectedDuration = null;
      _formattedTime = 'No alarm set';
      _isAlarmSet = false;
    });
  }

  Future<CustomTime?> showTheTimePicker({
    required BuildContext context,
    required CustomTime initialTime,
  }) async {
    return showDialog<CustomTime>(
      context: context,
      builder: (context) {
        return DurationPickerDialog(initialTime: initialTime);
      },
    );
  }

  void _resetAlarm() {
    setState(() {
      _selectedDuration = null; // Clear the selected time
      _formattedTime = 'No alarm set'; // Reset the displayed time
      _isAlarmSet = false; // Reset the alarm state
      _isAlarmPlaying = false; // Stop any ringing alarms
      _audioPlayer.stop(); // Stop any playing audio
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alarm Clock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selected Alarm Time:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              _formattedTime,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                _selectDuration(context);
              },
              child: const Text(
                'Set Alarm',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: _resetAlarm,
              child: const Text(
                'Reset Alarm',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            // Show the Cancel Alarm button if an alarm is set and not ringing yet
            if (_isAlarmSet && !_isAlarmPlaying)
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: _cancelAlarm,
                child: const Text(
                  'Cancel Alarm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            const SizedBox(height: 20),
            // Show the Stop Alarm button if the alarm is playing
            if (_isAlarmPlaying)
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: _stopAlarm,
                child: const Text(
                  'Stop Alarm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class DurationPickerDialog extends StatefulWidget {
  final CustomTime initialTime;

  const DurationPickerDialog({super.key, required this.initialTime});

  @override
  _DurationPickerDialogState createState() => _DurationPickerDialogState();
}

class _DurationPickerDialogState extends State<DurationPickerDialog> {
  late CustomTime selectedTime;

  @override
  void initState() {
    super.initState();
    selectedTime = widget.initialTime;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pick Time'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Hours: ${selectedTime.hours}'),
          Slider(
            min: 0,
            max: 23,
            value: selectedTime.hours.toDouble(),
            onChanged: (value) {
              setState(() {
                selectedTime = CustomTime(
                  hours: value.toInt(),
                  minutes: selectedTime.minutes,
                  seconds: selectedTime.seconds,
                );
              });
            },
          ),
          Text('Minutes: ${selectedTime.minutes}'),
          Slider(
            min: 0,
            max: 59,
            value: selectedTime.minutes.toDouble(),
            onChanged: (value) {
              setState(() {
                selectedTime = CustomTime(
                  hours: selectedTime.hours,
                  minutes: value.toInt(),
                  seconds: selectedTime.seconds,
                );
              });
            },
          ),
          Text('Seconds: ${selectedTime.seconds}'),
          Slider(
            min: 0,
            max: 59,
            value: selectedTime.seconds.toDouble(),
            onChanged: (value) {
              setState(() {
                selectedTime = CustomTime(
                  hours: selectedTime.hours,
                  minutes: selectedTime.minutes,
                  seconds: value.toInt(),
                );
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, null), // Cancel
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () =>
              Navigator.pop(context, selectedTime), // Return selected time
          child: const Text('Set'),
        ),
      ],
    );
  }
}

class CustomTime {
  final int hours;
  final int minutes;
  final int seconds;

  CustomTime(
      {required this.hours, required this.minutes, required this.seconds});

  String formattedTime() {
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
