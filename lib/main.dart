/*
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(home: MessagesScreen()));
}

class Message {
  final String text;
  final DateTime timestamp;
  final bool isSentByMe;

  Message({
    required this.text,
    required this.timestamp,
    required this.isSentByMe,
  });
}

class MessagesScreen extends StatelessWidget {
  // Sample messages data grouped by date
  final Map<DateTime, List<Message>> messagesByDate = {
    DateTime(2025, 1, 15): [
      Message(
        text: "Hey, how are you?",
        timestamp: DateTime(2025, 1, 15, 10, 30),
        isSentByMe: true,
      ),
      Message(
        text: "I'm good, thanks!",
        timestamp: DateTime(2025, 1, 15, 10, 35),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
    DateTime(2025, 1, 14): [
      Message(
        text: "Let's meet tomorrow",
        timestamp: DateTime(2025, 1, 14, 15, 20),
        isSentByMe: true,
      ),
      Message(
        text: "Sure, what time?",
        timestamp: DateTime(2025, 1, 14, 15, 25),
        isSentByMe: false,
      ),
    ],
  };

  MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dates = messagesByDate.keys.toList()
      ..sort((a, b) => b.compareTo(a)); // Sort dates in descending order

    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: CustomScrollView(
        slivers: dates.map((date) {
          return SliverStickyHeader(
            header: Container(
              height: 40,
              color: Colors.grey[200],
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: Text(
                _formatDate(date),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) {
                  final message = messagesByDate[date]![i];
                  return MessageBubble(message: message);
                },
                childCount: messagesByDate[date]!.length,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Today';
    } else if (date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day) {
      return 'Yesterday';
    } else {
      return DateFormat('MMMM d, yyyy').format(date);
    }
  }
}

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Align(
        alignment:
            message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: message.isSentByMe ? Colors.blue[100] : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message.text),
              const SizedBox(height: 4),
              Text(
                DateFormat('HH:mm').format(message.timestamp),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
