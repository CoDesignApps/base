import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:baseapp/screens/base/controllers/base_ui.dart';
import 'package:baseapp/screens/model/child1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // define variables
    // final String baseScreenText = 'Base Screen  passed to child 1';
    // final BaseUI ui = BaseUI();
    final state = context.watch<BaseState>();

    // prepare data

    // display widget
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  child: Text('Change Name'),
                  onPressed: () {
                    state.name = 'Name Changed';
                  },
                ),
                FlatButton(
                  child: Text('Change Name Back'),
                  onPressed: () {
                    state.name = 'Name Changed Back';
                  },
                ),
                Center(child: Child1())
              ]),

          // child: Center(child: Text(baseScreenText)),
          //child: Center(child: ui.returnStringAsWidget(baseScreenText),)
        ));
  }
}
