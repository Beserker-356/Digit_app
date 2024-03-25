import "package:digit_app/Pages/Citizen/citizen_login.dart";
import "package:digit_app/Pages/Employee/emp_login.dart";
import "package:digit_app/Utils/my_buttons.dart";
import "package:flutter/material.dart";

class RedirectPage extends StatelessWidget {
  const RedirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/Images/mseva-punjab-logo.jpg"),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    text: "Citizen",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Citizen_Login()),
                      );
                    }),
                SizedBox(
                  width: 40,
                ),
                MyButton(
                    text: "Employee",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Emp_Log()),
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
