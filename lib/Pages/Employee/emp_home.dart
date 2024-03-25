import "package:digit_app/Models/interactions.dart";
import "package:flutter/material.dart";

import "../../Models/public_record.dart";

class Emp_Home extends StatelessWidget {
  Emp_Home({super.key});

  List<RecordModel> records = [];
  List<InterModel> interactions = [];

  void _get_records() {
    records = RecordModel.get_records();
  }

  void _get_inerations() {
    interactions = InterModel.get_records();
  }

  @override
  Widget build(BuildContext context) {
    _get_records();
    _get_inerations();
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(50),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 25, right: 20),
                    height: 40,
                    child: Text(
                      "Records",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(220, 255, 255, 255),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(70, 41, 41, 41),
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  child: ListView.separated(
                    itemCount: records.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 40,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(200, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 41, 41, 41),
                              blurRadius: 5.0,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Add",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, right: 5),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            if (records[index].iconName == "birth")
                              const Icon(
                                Icons.child_care,
                                size: 40,
                              )
                            else
                              const Icon(
                                Icons.document_scanner,
                                size: 40,
                              ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              records[index].name,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: EdgeInsets.only(left: 25, right: 20),
                    height: 40,
                    child: Text(
                      "Public Interactions",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(220, 255, 255, 255),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(70, 41, 41, 41),
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  child: ListView.separated(
                    itemCount: interactions.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 40,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(200, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 41, 41, 41),
                              blurRadius: 5.0,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Add",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, right: 5),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            if (interactions[index].iconName == "survey")
                              const Icon(
                                Icons.edit_document,
                                size: 40,
                              )
                            else if (interactions[index].iconName == "events")
                              const Icon(
                                Icons.event,
                                size: 40,
                              )
                            else
                              const Icon(
                                Icons.message,
                                size: 40,
                              ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              child: Text(
                                interactions[index].name,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
