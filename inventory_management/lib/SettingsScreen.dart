import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seetings"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Profile"),
                subtitle: Text("to know account profile"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Notifications"),
                subtitle: Text("to know your order status"),
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("About"),
                subtitle: Text("details about this app"),
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout),
                onTap: (){
                  Navigator.of(context)
                      .pushReplacementNamed("/userauth");
                },
                // subtitle: Text("to know account profile"),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
