import 'package:baseapp/screens/model/child2.dart';
import 'package:flutter/material.dart';

class Child1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Child2(),
    );
  }
}
