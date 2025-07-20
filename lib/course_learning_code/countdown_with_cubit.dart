import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BlocProvider(
      create: (context) => CountdownCubit(),
      child: const CountDown(),
    ),
  ));
}

abstract class CountdownState {}

class CountdownRunning extends CountdownState {
  final dynamic number;
  final bool isRunning;
  CountdownRunning(
    this.number, {
    required this.isRunning,
  });
}

class CountdownComplete extends CountdownState {}

class CountdownCubit extends Cubit<CountdownState> {
  final List<int> numbers = [
    20,
    19,
    18,
    17,
    16,
    15,
    14,
    13,
    12,
    11,
    10,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1
  ];
  bool isRunning = false;
  int currentIndex = 0;

  CountdownCubit() : super(CountdownRunning(20, isRunning: false));
  void startCountdown() async {
    isRunning = true;
    while (currentIndex < numbers.length && isRunning) {
      await Future.delayed(const Duration(seconds: 1));
      emit(CountdownRunning(numbers[currentIndex], isRunning: true));
      currentIndex++;
    }
    await Future.delayed(const Duration(seconds: 1));
    if (currentIndex == numbers.length && isRunning) {
      emit(CountdownComplete());
    }
  }

  void pauseCountdown() {
    isRunning = false;
  }

  void continueCountdown() {
    if (!isRunning && currentIndex < numbers.length) {
      startCountdown();
    }
  }

  void resetCountdown() {
    isRunning = false;
    currentIndex = 0;
    emit(CountdownRunning(numbers[currentIndex], isRunning: false));
  }
}

class CountDown extends StatelessWidget {
  const CountDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CountdownCubit, CountdownState>(
              builder: (context, state) {
                if (state is CountdownRunning) {
                  return Text(
                    state.number.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                } else if (state is CountdownComplete) {
                  return const Text(
                    'Boom!',
                    style: TextStyle(fontSize: 70),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                context.read<CountdownCubit>().startCountdown();
              },
              child: Container(
                height: 45,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Teskari sanashni boshlash',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                context.read<CountdownCubit>().pauseCountdown();
              },
              child: Container(
                height: 45,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Teskari sanashni to'xtatish",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                context.read<CountdownCubit>().continueCountdown();
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Teskari sanashni davom ettirish',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                context.read<CountdownCubit>().resetCountdown();
              },
              child: Container(
                height: 45,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.cyan[800],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Yangilash',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
