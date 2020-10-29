import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hex - 16'),),
      backgroundColor: Colors.black87,
      body: Container(
        height: MediaQuery.of(context).size.height*0.75,
        width: MediaQuery.of(context).size.width*0.75,
        color: Colors.blueAccent,
      ),
    );
  }
}