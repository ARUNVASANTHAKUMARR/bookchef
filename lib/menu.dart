import 'package:bookchef/core/color.dart';
import 'package:bookchef/cus%20menu.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MENU')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 10,
              shrinkWrap:
                  true, // This allows the ListView to take up only the necessary space
              physics:
                  NeverScrollableScrollPhysics(), // Disable scrolling for the ListView to allow SingleChildScrollView to scroll
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                            "Assets/3d-portrait-chef_23-2150793925.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'ld,dspcdmdcpmcpmpo',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              ',od,fmkpdkoomm',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'lmdksdopdp',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolor.maincolor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cusmenu()),
                );
              },
              child: const Text(
                "Customize your menu",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
