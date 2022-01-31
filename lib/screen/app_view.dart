import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) :super (key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //
        title: Text("Flutter Navigation"),
        centerTitle: true,
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
      body: Center(
        child: Text("Navigation"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          print("Text");
        },
        child: Icon(Icons.home),
      ),
      drawer: Drawer(
        // Navbar
        child: ListView(
          children: [
            DrawerHeader(
              // HEADER
              child: Center(
                child: Text(
                  "Header",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            ListTile(
              onTap: () {
                print("Home");
              },
              leading: Icon(
                Icons.account_circle,
                color: Colors.purpleAccent,
              ),
              title: Text("Menu-1",
                  style: TextStyle(color: Colors.purpleAccent)),
            ),
            ListTile(
              onTap: () {
                print("Home");
              },
              leading: Icon(
                Icons.label,
                color: Colors.purpleAccent,
              ),
              title: Text("Menu-2"),
            ),
            ListTile(
              leading: Icon(
                Icons.label,
                color: Colors.purpleAccent,
              ),
              title: Text("Menu-3"),
            ),
            ListTile(
              leading: Icon(
                Icons.label,
                color: Colors.purpleAccent,
              ),
              title: Text("Menu-4"),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.purpleAccent,
              ),
              title: Text("Exit Program"),
            ),
          ],
        ),
      ),
    );
  }
}