import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:baseapp/screens/model/sub-models/child_y_knows_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChildX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<BaseState>();

    return Container(
      child: Column(
        children: [
          FlatButton(
            child: Text('Toggle BUtton'),
            onPressed: () {
              state.toggle = !state.toggle;
              if (state.toggle) {
                state.name = 'Name Changed';
              } else {
                state.name = 'Name Changed Back';
              }
            },
          ),
          ChildYKnowsName()
        ],
      ),
    );
  }
}
