import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Test")),
      ),
    );
  }
}
