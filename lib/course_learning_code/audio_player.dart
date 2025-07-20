import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioPage(),
    );
  }
}

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  final AudioPlayer player = AudioPlayer(); // Create player instance
  bool isPlaying = false;
  double currentSliderValue = 0;
  Duration totalDuration = Duration.zero;
  Duration currentPosition = Duration.zero;

  @override
  void initState() {
    super.initState();

    // Listen to the player's duration (total length of the audio)
    player.onDurationChanged.listen((duration) {
      setState(() {
        totalDuration = duration; // Set the total duration of the audio
      });
    });

    // Listen to the player's current position (current progress of the audio)
    player.onPositionChanged.listen((position) {
      setState(() {
        currentPosition = position;
        currentSliderValue =
            position.inSeconds.toDouble(); // Update slider value
      });
    });
  }

  @override
  void dispose() {
    player.dispose(); // Dispose of the player when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audioplayer", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              thumbColor: Colors.blue,
              value: currentSliderValue,
              min: 0,
              max: totalDuration.inSeconds.toDouble() > 0
                  ? totalDuration.inSeconds.toDouble()
                  : 1, // Prevents division by 0 error
              divisions: totalDuration.inSeconds > 0
                  ? totalDuration.inSeconds
                  : null, // Set divisions only if the duration is greater than 0
              label: currentPosition
                  .toString()
                  .split('.')
                  .first, // Display current time
              onChanged: (double value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
              onChangeEnd: (double value) async {
                await player.seek(Duration(seconds: value.toInt()));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton.filled(
                  onPressed: () async {
                    if (isPlaying) {
                      await player.pause(); // Pause if playing
                    } else {
                      await player.play(
                          AssetSource("twinz.mp3")); // Play if not playing
                    }
                    setState(() {
                      isPlaying = !isPlaying; // Toggle the playing state
                    });
                  },
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow, // Change icon
                    color: Colors.white,
                  ),
                ),
                IconButton.filled(
                  onPressed: () async {
                    await player.stop(); // Stop the player
                    setState(() {
                      isPlaying = false; // Update state to reflect it's stopped
                      currentSliderValue = 0; // Reset slider
                      currentPosition = Duration.zero; // Reset current position
                    });
                  },
                  icon: const Icon(
                    Icons.stop_circle,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
