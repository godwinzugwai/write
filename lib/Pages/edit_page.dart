import 'package:flutter/material.dart';
import 'package:sampling/Pages/notes_page.dart';
import 'package:sampling/colors.dart';
import 'package:sampling/nav_bar.dart/reader_mode.dart';
import 'package:sampling/nav_bar.dart/settings.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        centerTitle: true,
        title: const Text(
          'Write_',
          style: TextStyle(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => const NotesPage()
          ),
        ),
        backgroundColor: black,
        child: const Icon(
          Icons.add,
          color: white,
          size: 40,
          ),  
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white54),
                prefixIcon: Icon(Icons.search, color: Colors.white54),
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: white),
                ),
              ),
              style: TextStyle(color: white),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(80),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // child: index == 0
                    //   ? const Icon(
                    //     Icons.add,
                    //     color: white,
                    //     size: 80,
                    //   )
                    // : null,
                  );
                },
              ),
            ),
          ],
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