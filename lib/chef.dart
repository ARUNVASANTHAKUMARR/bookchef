import 'package:bookchef/core/color.dart';
import 'package:bookchef/menu.dart';
import 'package:flutter/material.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class Chef extends StatelessWidget {
  const Chef({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CHEFS',
            style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Appcolor.maincolor,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    // onItemtapped(0);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => menu()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        // color: Colors.red,
                        child: Image.asset(
                            "Assets/3d-portrait-chef_23-2150793925.jpg"),
                      ),
                      Container(
                        height: 150,
                        // width: 200,
                        // color: Colors.red,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spa,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'venkatesh baat',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('korean', style: TextStyle(fontSize: 20)),
                            RatingStars(
                              editable: false,
                              rating: 3.5,
                              color: Colors.amber,
                              iconSize: 32,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
          },
        ));
  }
}
