import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChildYKnowsName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<BaseState>();

    return Container(child: Text(state.name));
  }
}
