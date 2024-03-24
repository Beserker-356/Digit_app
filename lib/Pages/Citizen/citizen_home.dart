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
        backgroundColor: const Color.fromARGB(255, 34, 28, 88),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Images/gt2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(60),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 51, 51, 51),
                      blurRadius: 50,
                      offset: Offset(5.0, 5.0),
                    )
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    contentPadding: EdgeInsets.all(15),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: const Color.fromARGB(255, 34, 28, 88),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
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
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 34, 28, 88),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 30,
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
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 34, 28, 88),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.white,
                                  size: 30,
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
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 34, 28, 88),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  Icons.folder,
                                  color: Colors.white,
                                  size: 30,
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
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 34, 28, 88),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(
                                  Icons.edit_document,
                                  color: Colors.white,
                                  size: 30,
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
