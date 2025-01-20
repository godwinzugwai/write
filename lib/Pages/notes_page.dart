import 'package:flutter/material.dart';
import 'package:sampling/Pages/edit_page.dart';
import 'package:sampling/colors.dart';
import 'package:sampling/nav_bar.dart/reader_mode.dart';
import 'package:sampling/nav_bar.dart/settings.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const NotesPage())
      // );
      break;
      case 1:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ReaderModePage()
        )
      );
      break;
      case 2: 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SettingsPage()
        )
      );
      break;
      case 3:
      //will remain on current page
      break;
    }
  }

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
          IconButton(
            icon: const Icon(
              Icons.home,
              color: white),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => const EditPage()
                )
              );
            },
          ),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, color: greyy),
            activeIcon: Icon(Icons.folder, color:  white),
            label: 'Documents'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: greyy),
            activeIcon: Icon(Icons.book, color:  white),
            label: 'Reader Mode',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: greyy),
            activeIcon: Icon(Icons.settings, color:  white),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: white,
        unselectedItemColor: greyy,
        onTap: _onItemTapped,
      ),
    );
  }
}