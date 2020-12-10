import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BaseState extends ChangeNotifier {
  // this file contains all info needed to display any widget
  // under the home_screen widget.
  // ...such a currently selected sorting and filtering, currency, local values

  String _name = 'Base State gave us this';
  String get name => _name;
  set name(String name) {
    _name = name;
    notifyListeners();
  }

  bool _toggle = false;
  bool get toggle => _toggle;
  set toggle(bool toggle) {
    _toggle = toggle;
    notifyListeners();
  }
}
