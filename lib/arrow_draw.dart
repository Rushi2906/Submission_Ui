import 'package:flutter/material.dart';

class Arrow extends StatefulWidget{
  const Arrow({super.key});

  @override
  State<Arrow> createState() => _ArrowState();
}

class _ArrowState extends State<Arrow> {
  @override
  Widget build(BuildContext context) {
    var height=30;
    var width=30;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 30,
                width: 30,
                child: CustomPaint(
                  foregroundPainter: LinePainter(width * 1 / 6, height * 1 / 6,width * 5 / 6,height * 1),
                ),
              ),
              Container(
                color: Colors.blue,
                height: 30,
                width: 30,
                child: CustomPaint(
                  foregroundPainter: LinePainter(width * 5 / 6, height * 0,width * 1 / 6,height * 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter{

  double x1;
  double y1;
  double x2;
  double y2;
  LinePainter(this.x1,this.y1,this.x2,this.y2);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = 10;
    paint.color = Colors.white;
    canvas.drawLine(
      Offset(this.x1,this.y1),
      Offset(this.x2,this.y2),
      paint
    );
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
