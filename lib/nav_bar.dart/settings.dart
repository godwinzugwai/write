import 'package:flutter/material.dart';
import 'package:sampling/Pages/edit_page.dart';
import 'package:sampling/Pages/notes_page.dart';
import 'package:sampling/colors.dart';
import 'package:sampling/nav_bar.dart/reader_mode.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedIndex = 2;
  bool _keyboardSettings = true;
  bool _autoSave = true;
  bool _suggestions = true;
  bool _showWords = true;

  void _onItemTapped(int index) {
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
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => const ReaderModePage()));
          
        break;
      case 2:
        // Stay on the current page
        break;
    }
  }

  bool _isPageSetupExpanded = false;
  bool _isShareExpanded = false;
  bool _isHelpExpanded = false;
  bool _isPrivacyExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        title: const Text(
          'Settings_',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('WRITING',
            style: TextStyle(color: greyy, fontSize: 16)),
            SwitchListTile(
              title: const Text('Keyboard Settings',
              style: TextStyle(color: white)),
              value: _keyboardSettings,
              onChanged: (bool value) {
                setState(() {
                  _keyboardSettings = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Auto Save',
              style: TextStyle(color: white)),
              value: _autoSave,
              onChanged: (bool value) {
                setState(() {
                  _autoSave = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Suggestions',
              style: TextStyle(color: white)),
              value: _suggestions,
              onChanged: (bool value) {
                setState(() {
                  _suggestions = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Show Word', style: TextStyle(color: white)),
              value: _showWords,
              onChanged: (bool value) {
                setState(() {
                  _showWords = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('OTHER', style: TextStyle(color: greyy, fontSize: 16)),
            ExpansionTile(
              title: const Text(
                'Page Setup',
                style: TextStyle(
                  color: white)
              ),
              trailing: Icon(_isPageSetupExpanded ? Icons.expand_less : Icons.expand_more, color: greyy),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isPageSetupExpanded = expanded;
                });
              },
              children: const [],
            ),
            ExpansionTile(
              title: const Text(
                'Share',
                style: TextStyle(color: white)
                ),
              trailing: Icon(
                _isShareExpanded ? Icons.expand_less : Icons.expand_more,
                color: greyy),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isShareExpanded = expanded;
                });
              },
              children: const [],
            ),
            ExpansionTile(
              title: const Text(
                'Help',
                style: TextStyle(color: white)
              ),
              trailing: Icon(
                _isHelpExpanded ? Icons.expand_less : Icons.expand_more,
                color: greyy),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isHelpExpanded = expanded;
                });
              },
              children: const [],
            ),
            ExpansionTile(
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: white)
                  ),
              trailing: Icon(
                _isPrivacyExpanded ? Icons.expand_less : Icons.expand_more,
                color: greyy),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _isPrivacyExpanded = expanded;
                });
              }, 
              children: const [],
            ),
          ],
        ),
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

