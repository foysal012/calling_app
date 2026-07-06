import 'package:flutter/material.dart';
import 'call_screen.dart';
import 'contract_screen.dart';
import 'chats_screen.dart';
import 'settings_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  List<Widget> pages = [
    ChatsScreen(),
    CallScreen(),
    ContractScreen(),
    SettingsScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls'),
            BottomNavigationBarItem(icon: Icon(Icons.contacts_rounded),label: 'Contracts'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
          ],
      ),
    );
  }
}
