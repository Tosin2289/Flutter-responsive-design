import 'package:flutter/material.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: Text("M O B I L E A P P")),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              width: 200,
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.black),
                    accountName: Text(
                      "Admin",
                      style: TextStyle(fontSize: 25),
                    ),
                    accountEmail:
                        Text("Admin@gmail.com", style: TextStyle(fontSize: 25)),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.home),
                    title: Text("Home", style: TextStyle(fontSize: 25)),
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.dashboard),
                    title: Text("DashBoard", style: TextStyle(fontSize: 25)),
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.favorite),
                    title: Text("Favourite", style: TextStyle(fontSize: 25)),
                  ),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.settings),
                    title: Text("Settings", style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
