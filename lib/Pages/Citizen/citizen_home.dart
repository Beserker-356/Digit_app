import "package:digit_app/Pages/Citizen/create_birth_reg.dart";
import "package:digit_app/Utils/g_nav.dart";
import "package:flutter/material.dart";

class Citizen_Home extends StatelessWidget {
  const Citizen_Home({super.key});

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
        backgroundColor: const Color.fromARGB(255, 51, 51, 51),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Images/gt2.jpeg"),
                fit: BoxFit.cover,
                opacity: 0.7,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(60),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    contentPadding: EdgeInsets.all(15),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Color.fromARGB(255, 129, 129, 129),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(70, 41, 41, 41),
                      blurRadius: 5.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Information and Updates",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                child: const Icon(
                                  Icons.home_work,
                                  color: Color.fromARGB(255, 22, 26, 29),
                                  size: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "My City",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                child: const Icon(
                                  Icons.calendar_month_outlined,
                                  color: Color.fromARGB(255, 22, 26, 29),
                                  size: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Events",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                child: const Icon(
                                  Icons.folder,
                                  color: Color.fromARGB(255, 22, 26, 29),
                                  size: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Documents",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                child: const Icon(
                                  Icons.edit_document,
                                  color: Color.fromARGB(255, 22, 26, 29),
                                  size: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Surveys",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
