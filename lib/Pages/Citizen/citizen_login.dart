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
  final String _registeredNumber = "1234567890";
  String _phoneNumber = "";

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
                  "Login with OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
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
                      "Enter your phone number: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "All the information regarding the application will be sent to this phone number.",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              '+91',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter your phone number",
                            ),
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.phone,
                            onChanged: (value) =>
                                setState(() => _phoneNumber = value),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyButton(
                          text: "Next",
                          onPressed: () {
                            if (_phoneNumber == _registeredNumber) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OTP()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Invalid phone number!"),
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
