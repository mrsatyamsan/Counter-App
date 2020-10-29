import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
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