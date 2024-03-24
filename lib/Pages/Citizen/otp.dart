import "package:digit_app/Pages/Citizen/c_home.dart";
import "package:digit_app/Pages/Citizen/citizen_login.dart";
import "package:digit_app/Utils/my_buttons.dart";
import "package:flutter/material.dart";

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final String _registeredOTP = "1111";
  String _OTP = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "   Punjab | Amritsar",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 34, 28, 88),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 34, 28, 88),
              ),
              child: const Center(
                child: Text(
                  "Verify your OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Enter your OTP: ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextField(
                      onChanged: (value) => setState(() => _OTP = value),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyButton(
                          text: "Cancel",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Citizen_Login()),
                            );
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        MyButton(
                          text: "Submit",
                          onPressed: () {
                            if (_OTP == _registeredOTP) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => C_Home()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid OTP!"),
                                ),
                              );
                            }
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
      backgroundColor: Colors.grey,
    );
  }
}
