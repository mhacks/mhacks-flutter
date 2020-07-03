import 'package:flutter/material.dart';

class PrimaryScreen extends StatefulWidget {
  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: FlatButton(
              color: Colors.red,
              child: Text('Exit'),
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: FlatButton(
              color: Colors.red,
              child: Text('Go Next Screen'),
              onPressed: () => Navigator.pushNamed(context, '/secondary'),
            ),
          ),
        ],
      ),
    );
  }
}
