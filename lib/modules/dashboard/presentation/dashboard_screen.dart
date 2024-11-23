import 'package:flutter/material.dart';
import 'package:miles_edu_assessment/modules/dashboard/widgets/curved_bottom_navigation_bar.dart';
import 'package:miles_edu_assessment/modules/home/presentation/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      extendBody: true, // Important for the curved effect
      bottomNavigationBar: const CurvedBottomNavBar(),
    );
  }
}
