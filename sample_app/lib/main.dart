import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomButton("Hello"),
    );
  }
}

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   String textToShow = "I Like Flutter";
//   void _updateText() {
//     setState(() {
//       textToShow = "Flutter is Awesome!";
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample App"),
//       ),
//       body: Center(child: Text(textToShow)),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _updateText,
//         tooltip: 'Update Text',
//         child: Icon(Icons.update),
//       ),
//     );
//   }
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   bool toggle = true;

//   void _toggle() {
//     setState(() {
//       toggle = !toggle;
//     });
//   }

//   _getToggleChild() {
//     if (toggle) {
//       return Text('Toggle One');
//     } else {
//       return CupertinoButton(
//         onPressed: () {},
//         child: Text('Toggle Two'),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample App"),
//       ),
//       body: Center(
//         child: _getToggleChild(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _toggle,
//         tooltip: 'Update Text',
//         child: Icon(Icons.update),
//       ),
//     );
//   }
// }

// class MyFadeTest extends StatefulWidget {
//   MyFadeTest({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyFadeTest createState() => _MyFadeTest();
// }

// class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
//   AnimationController controller;
//   CurvedAnimation curve;

//   @override
//   void initState() {
//     controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
//     curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           child: FadeTransition(
//             opacity: curve,
//             child: FlutterLogo(
//               size: 100.0,
//             )
//           )
//         )
//       ),
//       floatingActionButton: FloatingActionButton(
//         tooltip: 'Fade',
//         child: Icon(Icons.brush),
//         onPressed: () {
//           controller.forward();
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

// class SignaturePainter extends CustomPainter {
//   SignaturePainter(this.points);

//   final List<Offset> points;

//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()
//       ..color = Colors.black
//       ..strokeCap = StrokeCap.round
//       ..strokeWidth = 5.0;
    
//     for (int i = 0; i < points.length - 1; i++) {
//       if (points[i] != null && points[i + 1] != null) {
//         canvas.drawLine(points[i], points[i + 1], paint);
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(SignaturePainter other) => other.points != points; 
// }

// class Signature extends StatefulWidget {
//   SignatureState createState() => SignatureState();
// }

// class SignatureState extends State<Signature> {
//   List<Offset> _points = <Offset>[];

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onPanUpdate: (DragUpdateDetails details) {
//         setState(() {
//           RenderBox box = context.findRenderObject();
//           Offset position = box.globalToLocal(details.globalPosition);
//           _points = List.from(_points)..add(position);
//         });
//       },
//       onPanEnd: (DragEndDetails details) => _points.add(null),
//       child: CustomPaint(painter: SignaturePainter(_points), size: Size.infinite),
//     );
//   }
// }

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){},
      child: Text(label),
    );
  }
}