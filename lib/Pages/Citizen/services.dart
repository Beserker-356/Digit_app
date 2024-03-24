import "package:digit_app/Pages/Citizen/create_birth_reg.dart";
import "package:flutter/material.dart";
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class Citizen_Services extends StatelessWidget {
  const Citizen_Services({super.key});

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
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Images/gt2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
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
                    "Services",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 500,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(200, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(120, 0, 0, 0),
                      blurRadius: 15.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        width: 300,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Birth Registration",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Birth_Reg()),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        width: 300,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Download Birth Certificate",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                Future<void> _downloadBirthCertificate() async {
                                  final storageStatus =
                                      await Permission.storage.request();
                                  if (!storageStatus.isGranted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            "Storage permission is required to download!"),
                                      ),
                                    );
                                    return;
                                  }

                                  FileDownloader.downloadFile(
                                    url:
                                        "https://drive.google.com/file/d/1aMjqWxBxCTLRvIK8KQbpPXIC_8UMF4-V/view?usp=drive_link",
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Birth Certificate dowloaded in Downloads folder!"),
                                    ),
                                  );
                                }
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
