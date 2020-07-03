import 'package:flutter/material.dart';

class SecondaryScreen extends StatefulWidget {
  @override
  _SecondaryScreenState createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          child: FlatButton(
            color: Colors.red,
            child: Text('Go Back'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
