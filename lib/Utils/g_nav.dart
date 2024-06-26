import "package:digit_app/Pages/Citizen/citizen_home.dart";
import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class G_Nav extends StatelessWidget {
  void Function(int)? onTabChange;
  G_Nav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
          color: Colors.grey,
          activeColor: const Color.fromARGB(255, 51, 51, 51),
          tabActiveBorder:
              Border.all(color: const Color.fromARGB(255, 51, 51, 51)),
          tabBackgroundColor: Color.fromARGB(255, 218, 218, 218),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 40,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.room_service_outlined,
              text: "Services",
            ),
          ]),
    );
  }
}
