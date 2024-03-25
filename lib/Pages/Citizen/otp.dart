import "package:digit_app/Pages/Citizen/c_home.dart";
import "package:digit_app/Pages/Citizen/citizen_home.dart";
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
                        "All the communications regarding the app will be sent to this number."),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Verify your OTP: ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your OTP",
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        fillColor: Color.fromARGB(255, 236, 236, 236),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(fontSize: 16),
                      onChanged: (value) => setState(() => _OTP = value),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Resend OTP?",
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
                          text: "Cancel",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Citizen_Login()),
                            );
                          },
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MyButton(
                          text: "Login",
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
    );
  }
}
