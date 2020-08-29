import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShapesView extends StatelessWidget {
  const ShapesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomPaint(
                    child: Container(),
                    painter: LinePainter(),
                  ),
                ),
                Expanded(
                  child: CustomPaint(
                    child: Container(),
                    painter: CirclePainter(),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomPaint(
                    painter: SquarePainter(),
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: CustomPaint(
                    painter: TrianglePainter(),
                    child: Container(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 10;

    Offset startingPoint = Offset(size.width / 2, size.height / 4.3);
    Offset endingPoint = Offset(size.width / 2, size.height / 1.2);

    canvas.drawLine(startingPoint, endingPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.blue;

    Offset point = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(point, 70, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class SquarePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.green;

    var path = Path();
    var angle = (math.pi * 2) / 4;

    Offset center = Offset(size.width / 2, size.height / 2);

    Offset startPoint = Offset(70 * math.cos(0.0), 70 * math.sin(0.0));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    for (int i = 1; i <= 4; i++) {
      double x = 70 * math.cos(angle * i) + center.dx;
      double y = 70 * math.sin(angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.purple;
    var path = Path();
    var angle = (math.pi * 2) / 3;

    Offset center = Offset(size.width / 2, size.height / 2);

    Offset startPoint = Offset(70 * math.cos(0.0), 70 * math.sin(0.0));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    for (int i = 1; i <= 3; i++) {
      double x = 70 * math.cos(angle * i) + center.dx;
      double y = 70 * math.sin(angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
