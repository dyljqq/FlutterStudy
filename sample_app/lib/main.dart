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
      home: MyFadeTest(title: 'Fade Demo'),
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

class MyFadeTest extends StatefulWidget {
  MyFadeTest({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyFadeTest createState() => _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: FadeTransition(
            opacity: curve,
            child: FlutterLogo(
              size: 100.0,
            )
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        child: Icon(Icons.brush),
        onPressed: () {
          controller.forward();
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}