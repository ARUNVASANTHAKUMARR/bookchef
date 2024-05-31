import 'package:bookchef/about%20us.dart';
import 'package:bookchef/contact.dart';
import 'package:bookchef/core/color.dart';
import 'package:bookchef/cuisine.dart';
import 'package:bookchef/enquriy.dart';
import 'package:bookchef/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chef.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(Theme.of(context).textTheme),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BOOK CHEF',
          style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Appcolor.maincolor,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 235, 80, 69)),
              child: Center(
                  child: Text(
                'Options',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              )),
            ),
            ListTile(
              title: const Text('CHEFS'),
              // selected: _selectedIndex == 0,
              onTap: () {
                // onItemtapped(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chef()),
                );
              },
            ),
            ListTile(
              title: const Text('CUISINE'),
              // selected: _selectedIndex == 1,
              onTap: () {
                // onItemtapped(1);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const cuisine()));
              },
            ),
            ListTile(
              title: const Text('ENQUIRY'),
              // selected: _selectedIndex == 2,
              onTap: () {
                // onItemtapped(2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => enquriy()),
                );
              },
            ),
            ListTile(
              title: const Text('CONTACT'),
              // selected: _selectedIndex == 3,
              onTap: () {
                // onItemtapped(3);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const contact()),
                );
              },
            ),
            ListTile(
              title: const Text('REVIEW'),
              // selected: _selectedIndex == 4,
              onTap: () {
                // onItemtapped(4);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const review()),
                );
              },
            ),
            ListTile(
              title: const Text('ABOUT US'),
              // selected: _selectedIndex == 5,
              onTap: () {
                // onItemtapped(5);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Aboutus()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Text(
            'ACHIEVEMENTS',
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
                  child: Image.asset("Assets/Screenshot 2024-01-01 193913.png"),
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
                      Text('hbfvhshhsbhsdbvhb', style: TextStyle(fontSize: 20))
                    ],
                  ),
                )
              ],
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
                  // color: Colors.red,
                  child: const Column(
                    // mainAxisAlignment: MainAxisAlignment.spa,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ld,dspcdmdcpmcpmpo',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(',od,fmkpdkoomm', style: TextStyle(fontSize: 20)),
                      Text('lmdksdopdp', style: TextStyle(fontSize: 20))
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  // color: Colors.red,
                  child:
                      Image.asset("Assets/3d-portrait-chef_23-2150793925.jpg"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onItemtapped(int i) {}
}

class _selectedIndex {}
