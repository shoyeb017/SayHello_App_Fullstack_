import 'package:flutter/material.dart';
import 'BottomTabs/Home/home_page.dart';
import 'BottomTabs/Connect/connect_page.dart';
import 'BottomTabs/Feed/feed_page.dart';
import 'BottomTabs/Learn/learn_page.dart';
import 'BottomTabs/Profile/profile_page.dart';
import '../../l10n/app_localizations.dart';

class LearnerMainTab extends StatefulWidget {
  const LearnerMainTab({super.key});

  @override
  State<LearnerMainTab> createState() => _LearnerMainTabState();
}

class _LearnerMainTabState extends State<LearnerMainTab> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ConnectPage(),
    const FeedPage(),
    const LearnPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent, // ❌ Remove ripple
          highlightColor: Colors.transparent, // ❌ Remove highlight
        ),
        child: Material(
          elevation: 20,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFF7A54FF),
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(size: 30),
            unselectedIconTheme: const IconThemeData(size: 30),
            selectedLabelStyle: const TextStyle(fontSize: 11),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: AppLocalizations.of(context)!.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group_add),
                label: AppLocalizations.of(context)!.connect,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.language),
                label: AppLocalizations.of(context)!.feed,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: AppLocalizations.of(context)!.learn,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
                label: AppLocalizations.of(context)!.profile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
