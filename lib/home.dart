import 'package:animations101/shapes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations 101"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customButton(
                context,
                "Shapes",
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ShapesView();
                  }));
                },
              ),
              customButton(
                context,
                "Two",
                () {},
              ),
              customButton(
                context,
                "Three",
                () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customButton(BuildContext context, String title, Function onPressed) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 3,
    child: FlatButton(
      color: Colors.blue,
      onPressed: onPressed,
      child: Text(title),
    ),
  );
}
