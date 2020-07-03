import 'package:flutter/material.dart';
import 'package:mhacksflutterapp/screens/login_screen.dart';
import 'package:mhacksflutterapp/screens/registration_screen.dart';
import 'package:mhacksflutterapp/screens/secondary_screen.dart';
import 'package:mhacksflutterapp/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'models/user_data.dart';
import 'screens/primary_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => User(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/registration': (context) => RegistrationScreen(),
          '/login': (context) => LoginScreen(),
          '/primary': (context) => PrimaryScreen(),
          '/secondary': (context) => SecondaryScreen(),
        },
      ),
    );
  }
}
