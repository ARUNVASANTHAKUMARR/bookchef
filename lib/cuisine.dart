import 'package:bookchef/chef.dart';
// import 'package:bookchef/menu.dart';
import 'package:flutter/material.dart';

class cuisine extends StatelessWidget {
  const cuisine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CUISINE')),
      body: Column(
        children: [
          const Text(
            'CUISINE',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              height: 300,
              // width: 445,
              // color: const Color.fromARGB(255, 118, 188, 246),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                    child:
                        Image.asset("Assets/Screenshot 2024-01-01 193913.png"),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    // color: Colors.red,
                    child: const Column(
                      // mainAxisAlignment: MainAxisAlignment.spa,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hii hello fbjsbyfbvbuv',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('ddhbhsbbfhbfb', style: TextStyle(fontSize: 20)),
                        Text('hbfvhshhsbhsdbvhb',
                            style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              )),
          Container(
              height: 300,
              // width: 445,
              // color: const Color.fromARGB(255, 118, 188, 246),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                    child:
                        Image.asset("Assets/Screenshot 2024-01-01 193913.png"),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    // color: Colors.red,
                    child: const Column(
                      // mainAxisAlignment: MainAxisAlignment.spa,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'hii hello fbjsbyfbvbuv',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('ddhbhsbbfhbfb', style: TextStyle(fontSize: 20)),
                        Text('hbfvhshhsbhsdbvhb',
                            style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
        //     Container(
        //       height: 300,
        //       // width: 445,
        //       // color: const Color.fromARGB(255, 118, 188, 246),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Container(
        //             height: 150,
        //             width: 150,
        //             // color: Colors.red,
        //             child: Image.asset(
        //                 "Assets/3d-portrait-chef_23-2150793925.jpg"),
        //           ),
        //           Container(
        //             height: 150,
        //             width: 150,
        //             // color: Colors.red,
        //             child: const Column(
        //               // mainAxisAlignment: MainAxisAlignment.spa,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'ld,dspcdmdcpmcpmpo',
        //                   style: TextStyle(fontSize: 20),
        //                 ),
        //                 Text(',od,fmkpdkoomm', style: TextStyle(fontSize: 20)),
        //                 Text('lmdksdopdp', style: TextStyle(fontSize: 20))
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ));
    //     ListView.builder(
    //     itemCount: 10,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Padding(
    //           padding: EdgeInsets.all(8),
    //           child: InkWell(
    //               onTap: () {
    //                 // onItemtapped(0);
    //                 Navigator.push(
    //                   context,
    //                   MaterialPageRoute(builder: (context) => Chef()),
    //                 );
    //               },
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                 children: [
    //                   Container(
    //                     height: 150,
    //                     width: 150,
    //                     // color: Colors.red,
    //                     child: Image.asset(
    //                         "Assets/3d-portrait-chef_23-2150793925.jpg"),
    //                   ),
    //                   Container(
    //                     height: 150,
    //                     width: 150,
    //                     // color: Colors.red,
    //                     child: Column(
    //                       // mainAxisAlignment: MainAxisAlignment.spa,
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(
    //                           'ld,dspcdmdcpmcpmpo',
    //                           style: TextStyle(fontSize: 20),
    //                         ),
    //                         Text(',od,fmkpdkoomm',
    //                             style: TextStyle(fontSize: 20)),
    //                         Text('lmdksdopdp', style: TextStyle(fontSize: 20))
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               )));
    //     },
    //   );
    // }
  

