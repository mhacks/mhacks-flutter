import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  bool _present;
  String _name;

  String get getName {
    return _name;
  }

  void togglePresent() {
    _present = !_present;
  }

  void checkIn(User user) {
    user.togglePresent();
    notifyListeners();
  }
}
