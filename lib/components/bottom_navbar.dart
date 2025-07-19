import 'package:book_app/screens/bangla_poem.dart';
import 'package:book_app/screens/english_poem.dart';
import 'package:flutter/material.dart';

class bottom_navbar extends StatefulWidget {
  const bottom_navbar({super.key});

  @override
  State<bottom_navbar> createState() => _bottom_navbarState();
}

class _bottom_navbarState extends State<bottom_navbar> {
  List<Widget> screens = [bangla_poem(), english_poem()];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book apps", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              child: Icon(Icons.book, color: Colors.white, size: 100),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                setState(() {
                  _index = 1;
                });
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Save"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Bangla"),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: "English",
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black38,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
      ),
      body: screens[_index],
    );
  }
}
