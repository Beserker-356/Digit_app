import "package:digit_app/Pages/Citizen/citizen_home.dart";
import "package:digit_app/Pages/Citizen/create_birth_reg.dart";
import "package:digit_app/Pages/Citizen/services.dart";
import "package:digit_app/Utils/g_nav.dart";
import "package:flutter/material.dart";

class C_Home extends StatefulWidget {
  const C_Home({super.key});

  @override
  State<C_Home> createState() => _C_HomeState();
}

class _C_HomeState extends State<C_Home> {
  int selectedIndex = 0;

  void nav_bottom(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Citizen_Home(),
    const Citizen_Services(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: G_Nav(
        onTabChange: (index) => nav_bottom(index),
      ),
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
    );
  }
}
