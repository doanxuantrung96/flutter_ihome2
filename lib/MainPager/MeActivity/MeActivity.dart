import 'package:flutter/material.dart';

class MeActivity extends StatefulWidget {
  @override
  _MeActivityState createState() => _MeActivityState();
}

class _MeActivityState extends State<MeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Text("Me Activity"),
      ),
    );
  }
}
