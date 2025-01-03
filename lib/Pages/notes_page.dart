import 'package:flutter/material.dart';
import 'package:sampling/colors.dart';
import 'package:sampling/nav_bar.dart/reader_mode.dart';
import 'package:sampling/nav_bar.dart/settings.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save,
            color: blue,),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Write_',
          style: TextStyle(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),
        ),
        actions: [
          IconButton(onPressed: () {},
          icon: const Icon(Icons.share, color: blue,),
          )
        ],
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(60.0),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const TextField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              border: InputBorder.none,
              // hintText: 'Write Here...'
            ),
            expands: true,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: black,
        selectedItemColor: blue,
        unselectedItemColor: blue,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotesPage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ReaderModePage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Documents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Reader Mode',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}