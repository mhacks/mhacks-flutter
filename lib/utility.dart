import 'package:flutter/material.dart';

Padding enterButton(Color c, Function f, String t) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      elevation: 5.0,
      color: c,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: () {
          f();
        },
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          t,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
