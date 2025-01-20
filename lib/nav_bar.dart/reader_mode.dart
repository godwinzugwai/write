import 'package:flutter/material.dart';
import 'package:sampling/Pages/edit_page.dart';
import 'package:sampling/Pages/notes_page.dart';
import 'package:sampling/colors.dart';
import 'package:sampling/nav_bar.dart/settings.dart';

class ReaderModePage extends StatefulWidget {
  const ReaderModePage({super.key});

  @override
  State<ReaderModePage> createState() => _ReaderModePageState();
}

class _ReaderModePageState extends State<ReaderModePage> {
  int _selectedIndex = 1;
  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => const NotesPage()));
        break;
      case 1:
        // Navigator.push(context,
        //   MaterialPageRoute(
        //     builder: (context) => const SettingsPage()));
        break;
      case 2:
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => const SettingsPage()));
        break;
    }
  }

  final List<Map<String, String>> savedWorks = [
    {"title": "Song for the Old Ones", "date": "12 October, 2017", "pages": "2 Pages"},
    {"title": "Phenomenal Woman", "date": "02 October, 2017", "pages": "4 Pages"},
    {"title": "Awakening in New York", "date": "19 September, 2019", "pages": "1 Page"},
    {"title": "The Heart of a Woman", "date": "03 August, 2017", "pages": "3 Pages"},
    {"title": "The Mothering Blackness", "date": "21 June, 2017", "pages": "2 Pages"},
    {"title": "Mom & Me & Mom", "date": "12 June, 2017", "pages": "3 Pages"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        title: const Text(
          'Write_',
          style: TextStyle(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.grey.shade800,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 3 / 2,
              ),
              itemCount: savedWorks.length,
              itemBuilder: (context, index) {
                final work = savedWorks[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReaderModeDetailsPage(
                          title: work['title']!,
                          date: work['date']!,
                          content: "This is the content of ${work['title']}.",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            work['date']!,
                            style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                          Text(
                            work['title']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            work['pages']!,
                            style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, color: greyy),
            activeIcon: Icon(Icons.folder, color: white),
            label: 'Documents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: greyy),
            activeIcon: Icon(Icons.book, color: white),
            label: 'Reader Mode',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: greyy),
            activeIcon: Icon(Icons.settings, color: white),
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

class ReaderModeDetailsPage extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const ReaderModeDetailsPage({
    Key? key,
    required this.title,
    required this.date,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  content,
                  style: const TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}