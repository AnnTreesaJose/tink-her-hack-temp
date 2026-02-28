import 'package:flutter/material.dart';
import 'screens/training.dart';
import 'screens/dashboard.dart';
import 'screens/reminders.dart';
import 'screens/profile.dart';
import 'screens/settings.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int index = 0;

  final screens = const [
    TrainingScreen(),
    DashboardScreen(),
    RemindersScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.teal,
        onTap: (i)=>setState(()=>index=i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label:"Training"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label:"Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label:"Reminders"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label:"Settings"),
        ],
      ),
    );
  }
}