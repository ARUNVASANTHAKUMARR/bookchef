import 'package:bookchef/core/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Appcolor.maincolor,
      ),
      backgroundColor: Appcolor.maincolor,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => cusmenu()),
            );
          },
          child: Text('Go to Custom Menu'),
        ),
      ),
    );
  }
}

class cusmenu extends StatefulWidget {
  const cusmenu({Key? key}) : super(key: key);

  @override
  _cusmenuState createState() => _cusmenuState();
}

class _cusmenuState extends State<cusmenu> {
  // List to hold the state of each checkbox
  List<bool> isCheckedList = List.generate(18, (_) => false);

  // List to hold selected menu items
  List<String> selectedMenuItems = [];

  final List<String> menuItems = [
    "Mushroom Makhani (Butter Mushroom)",
    "Samosas",
    "Aloo Gobi (Potato and Cauliflower)",
    "Naan (Flatbread)",
    "Matar Paneer (Peas and Cooked Cottage Cheese)",
    "Rogan Josh (Curried Meat)"
  ];

  void _onItemCheckedChange(int index, bool isChecked) {
    setState(() {
      isCheckedList[index] = isChecked;
      if (isChecked) {
        selectedMenuItems.add(menuItems[index % 6]);
      } else {
        selectedMenuItems.remove(menuItems[index % 6]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Menu'),
          backgroundColor: Appcolor.maincolor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "BREAKFAST",
                style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(menuItems[index]),
                    value: isCheckedList[index],
                    onChanged: (newValue) {
                      _onItemCheckedChange(index, newValue!);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
              const Text(
                "LUNCH",
                style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(menuItems[index]),
                    value: isCheckedList[index + 6],
                    onChanged: (newValue) {
                      _onItemCheckedChange(index + 6, newValue!);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
              const Text(
                "DINNER",
                style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(menuItems[index]),
                    value: isCheckedList[index + 12],
                    onChanged: (newValue) {
                      _onItemCheckedChange(index + 12, newValue!);
                    },
                    controlAffinity: ListTileControlAffinity.leading,
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
                    MaterialPageRoute(
                        builder: (context) => SelectedMenuPage(
                            selectedMenuItems: selectedMenuItems)),
                  );
                },
                child: const Text(
                  "Show Selected Menu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}

class SelectedMenuPage extends StatelessWidget {
  final List<String> selectedMenuItems;

  SelectedMenuPage({required this.selectedMenuItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Menu'),
        backgroundColor: Appcolor.maincolor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: selectedMenuItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(selectedMenuItems[index]),
                );
              },
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Appcolor.maincolor,
            ),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text(' BOOKING STATUS'),
                content: const Text('Booked Sucessfully'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: const Text(
              "Book now",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
