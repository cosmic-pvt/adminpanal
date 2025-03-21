import 'package:admin/pages/manage_matches.dart';
import 'package:flutter/material.dart';
import 'package:bgmi_admin/pages/manage_teams.dart';
import 'package:bgmi_admin/pages/manage_matches.dart';
import 'package:bgmi_admin/pages/results.dart';
import 'package:bgmi_admin/pages/live_streams.dart';
import 'package:bgmi_admin/pages/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ManageTeams(),
    ManageMatches(),
    ResultsPage(),
    LiveStreamsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BGMI Tournament Admin'),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.blueAccent,
      ),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Teams'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_esports), label: 'Matches'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Results'),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: 'Live Streams'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.blueAccent,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class ManageMatches {
}

class ManageTeams {
}

class ResultsPage {
}

class LiveStreamsPage {
}

class SettingsPage {
}
