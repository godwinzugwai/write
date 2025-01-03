import 'package:flutter/material.dart';
import 'package:sampling/colors.dart';

import '../Pages/notes_page.dart';
import 'settings.dart';

class ReaderModePage extends StatelessWidget {
  const ReaderModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        centerTitle: true,
        title: const Text(
          'Files_',
          style: TextStyle(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),
        ),
        elevation: 0,
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