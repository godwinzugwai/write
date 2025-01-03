import 'package:flutter/material.dart';
import 'package:sampling/colors.dart';
import 'package:sampling/slidebar/slidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WrittenPage(),
    );
  }
}

class WrittenPage extends StatelessWidget {
  const WrittenPage({super.key});

  void _showDraggableSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) {
            return SlidingTabs(scrollController: scrollController);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 600),
          child: GestureDetector(
            onTap: () => _showDraggableSheet(context),
            child: const Text(
              "Write_",
              style: TextStyle(
                fontSize: 40,
                color: white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}