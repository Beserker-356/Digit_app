import "package:digit_app/Pages/Employee/emp_home.dart";
import "package:digit_app/Utils/my_buttons.dart";
import "package:flutter/material.dart";

class Emp_Log extends StatefulWidget {
  const Emp_Log({super.key});

  @override
  State<Emp_Log> createState() => _Emp_LogState();
}

class _Emp_LogState extends State<Emp_Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/Images/mseva-punjab-logo.jpg"),
            Container(
              width: 300,
              height: 350,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Username: ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter your username",
                          contentPadding: EdgeInsets.all(10),
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 16),
                        onChanged: (value) => {}
                        // setState(() => _phoneNumber = value),
                        ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Password: ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter your password",
                          contentPadding: EdgeInsets.all(10),
                          filled: true,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 16),
                        onChanged: (value) => {}
                        // setState(() => _phoneNumber = value),
                        ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 31, 92, 223)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyButton(
                          text: "Login",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Emp_Home()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
