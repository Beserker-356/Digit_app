import "package:digit_app/Pages/Citizen/c_home.dart";
import "package:digit_app/Pages/Citizen/otp.dart";
import "package:digit_app/Utils/my_buttons.dart";
import "package:flutter/material.dart";

class Citizen_Login extends StatefulWidget {
  const Citizen_Login({super.key});

  @override
  State<Citizen_Login> createState() => _Citizen_LoginState();
}

class _Citizen_LoginState extends State<Citizen_Login> {
  String _phoneNumber = "";

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
                      "Phone Number: ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your phone no.",
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
                      onChanged: (value) =>
                          setState(() => _phoneNumber = value),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyButton(
                          text: "Next",
                          onPressed: () {
                            if (_phoneNumber.length == 10) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OTP()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid Number!"),
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
