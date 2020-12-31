import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:theme_provider/theme_provider.dart';

class ToPaint extends StatefulWidget {
  @override
  _ToPaintState createState() => _ToPaintState();
}

class _ToPaintState extends State<ToPaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomPaint(
        foregroundPainter: TimelinePainter(false, context),
        child: Container(
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}

class TimelinePainter extends CustomPainter {
  TimelinePainter(
    this.isNext,
    this.context,
  );
  BuildContext context;
  bool isNext;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Globals.splashColorLight;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4.7;
    print('size of canvas= h${size.height} & w${size.width}');
    var path = Path();
    if (!isNext) {
      path.moveTo(size.width * 0.1, size.height * 0.08);
      path.lineTo(size.width * 0.1, size.height);
    } else {
      path.moveTo(size.width * 0.1, 0);
      path.lineTo(size.width * 0.1, size.height * 0.6);
    }
    canvas.drawPath(
        dashPath(path, dashArray: CircularIntervalList([15.0, 7.0])), paint);

    var paint1 = Paint()
      ..color = Colors.blue[400]
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = Globals.isLargeScreen(context) ? 30 : 23;
    //list of points
    double pointGiver = size.width * 0.1;
    // double pointGiver2 = size.width * 0.8;
    var points;
    if (!isNext)
      points = [
        Offset(pointGiver, size.height * 0.1),
        Offset(pointGiver, size.height * 0.35),
        Offset(pointGiver, size.height * 0.6),
        Offset(pointGiver, size.height * 0.85),
        // Offset(pointGiver, size.height * 0.91),
        // Offset(pointGiver , size.height * 1.1),
        // Offset(pointGiver , size.height * 1.3),
        // Offset(pointGiver , size.height * 1.5),
        // Offset(pointGiver , size.height * 0.9),
        // Offset(pointGiver , size.height * 0.9),
      ];
    else
      points = [
        Offset(pointGiver, size.height * 0.1),
        Offset(pointGiver, size.height * 0.35),
        Offset(pointGiver, size.height * 0.6),
        // Offset(pointGiver, size.height *0.85),
      ];
    canvas.drawPoints(PointMode.points, points, paint1);

//----------------------------Road Map Like design-------------------------------------------------------

    // var paint = Paint();
    // paint.color = Globals.splashColorLight;
    // paint.style = PaintingStyle.stroke;
    // paint.strokeWidth = 6;
    // var start = Offset(size.width * 0.8, size.height * 0.1);
    // var controlPoint1 = Offset(size.width * 0.95, size.height * 0.138);
    // var controlPoint2 = Offset(size.width * 0.95, size.height * 0.475);
    // var end = Offset(size.width * 0.85, size.height * 0.5);

    // var controlPoint3 = Offset(-size.width * 0.001, size.height * 0.525);
    // var controlPoint4 = Offset(-size.width * 0.001, size.height * 0.850);
    // // final avatarBounds =
    // //     Rect.fromCircle(center: controlPoint, radius: size.height * 0.3);

    // var start2 = Offset(size.width * 0.08, size.height * 0.5);
    // var end2 = Offset(size.width * 0.08, size.height * 0.9);
    // var path = Path();
    // path.moveTo(size.width * 0.08, size.height * 0.1);
    // path.lineTo(size.width * 0.87, size.height * 0.1);
    // path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
    //     controlPoint2.dy, end.dx, end.dy);
    // path.lineTo(size.width * 0.08, size.height * 0.5);
    // path.cubicTo(controlPoint3.dx, controlPoint3.dy, controlPoint4.dx,
    //     controlPoint4.dy, end2.dx, end2.dy);
    // path.lineTo(size.width * 0.87, size.height * 0.9);
    // canvas.drawPath(
    //     dashPath(path, dashArray: CircularIntervalList([10.0, 5.0])), paint);

    // var paint1 = Paint()
    //   ..color = Colors.blue[400]
    //   ..strokeCap = StrokeCap.round //rounded points
    //   ..strokeWidth = 30;
    // //list of points
    // double pointGiver = size.width * 0.08;
    // double pointGiver2 = size.width * 0.8;
    // var points = [
    //   Offset(pointGiver * 2, size.height * 0.1),
    //   Offset(pointGiver * 4, size.height * 0.1),
    //   Offset(pointGiver * 7, size.height * 0.1),
    //   Offset(pointGiver * 10, size.height * 0.1),
    //   Offset(pointGiver, size.height * 0.5),
    //   Offset(pointGiver * 3, size.height * 0.5),
    //   Offset(pointGiver * 6, size.height * 0.5),
    //   Offset(pointGiver * 2, size.height * 0.9),
    //   Offset(pointGiver * 4, size.height * 0.9),
    //   Offset(pointGiver * 8, size.height * 0.9),
    // ];
    // canvas.drawPoints(PointMode.points, points, paint1);

//----------------------------Practice design-------------------------------------------------------------------
    // var paint = Paint();
    // paint.color = Colors.blue[900];
    // paint.style = PaintingStyle.stroke;
    // paint.strokeWidth = 3;
    // var paint1 = Paint()
    //   ..color = Colors.amber
    //   ..strokeWidth = 10;

    // var path1 = Path();
    // path1.moveTo(0, 0);
    // path1.lineTo(size.width, size.height / 5);
    // path1.lineTo(size.width, size.height / 2);
    // path1.close();
    // var paint2 = Paint();
    // paint2.color = Colors.amberAccent;
    // paint2.strokeWidth = 10;
    // paint2.style = PaintingStyle.fill;
    // canvas.drawPath(path1, paint2);
    // // canvas.drawLine(
    // //     Offset(0, size.height / 9), Offset(size.width, size.height / 9), paint);

    // var startingPoint = Offset(0, size.height / 2);
    // var controlPoint1 = Offset(size.width / 1.2, size.height / 1.2);
    // var controlPoint2 = Offset(3 * size.width / 4, size.height / 3);
    // var endPoint = Offset(size.width, size.height / 2);
    // var path = Path();
    // path.moveTo(startingPoint.dx, startingPoint.dy);
    // path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
    //     controlPoint2.dy, endPoint.dx, endPoint.dy);
    // canvas.drawPoints(PointMode.points, [controlPoint1, controlPoint2], paint1);
    // canvas.drawPath(
    //     dashPath(
    //       path,
    //       dashArray: CircularIntervalList<double>(<double>[15.0, 10.0]),
    //     ),
    //     paint);

    // var pth = Path();
    // var pnt = Paint();
    // pnt.color = Colors.indigoAccent;
    // pnt.strokeWidth = 10;
    // final shapeBounds = Rect.fromLTRB(
    //     size.width / 5, size.height / 3, size.width / 2, size.height/2);
    // final avatarBounds = Rect.fromCircle(
    //     center: Offset(size.width * 0.35, size.height/2), radius: 40);
    // pnt.style = PaintingStyle.fill;
    // pth
    //   ..moveTo(shapeBounds.left, shapeBounds.top)
    //   ..lineTo(shapeBounds.bottomLeft.dx, shapeBounds.bottomLeft.dy)
    //   ..arcTo(avatarBounds, -pi, pi, false)
    //   ..lineTo(shapeBounds.bottomRight.dx, shapeBounds.bottomRight.dy)
    //   ..lineTo(shapeBounds.topRight.dx, shapeBounds.topRight.dy)..close();
    // canvas.drawPath(pth, paint);
  }

  @override
  bool shouldRepaint(CustomPainter delegate) {
    return false;
  }
}

class CardDesignPainter extends CustomPainter {
  BuildContext context;
  CardDesignPainter(this.context);
  @override
  void paint(Canvas canvas, Size size) {
    var paintDate = Paint()
      ..color = ThemeProvider.themeOf(context).id == 'dark'
          ? Globals.splashColorLight //Color(0xff26ABBF)
          : Color(0xff00305b)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;
    double width = size.width, height = size.height;
    var pathDate = Path()
      ..moveTo(width * 0.57, height)
      ..lineTo(width * 0.61, height * 0.835)
      ..lineTo(width,height * 0.835)
      ..lineTo(width,height)
      ..close();
    canvas.drawPath(pathDate, paintDate);
    var paintTitle = Paint()
      ..color = ThemeProvider.themeOf(context).id == 'dark'
          ? Globals.splashColorLight // Color(0xff26ABBF)//Colors.black87
          : Color(0xff00305b)
      ..style = PaintingStyle.fill;
    var pathTitle = Path()
      ..moveTo(width * 0.06, 0)
      ..lineTo(width * 0.14, height * 0.2)
      ..lineTo(width * 0.86, height * 0.2)
      ..lineTo(width * 0.94, 0)
      ..close();
    canvas.drawPath(pathTitle, paintTitle);
  }

  @override
  bool shouldRepaint(CustomPainter delegate) {
    return false;
  }
}
