import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:sizer/sizer.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
// void main() => runApp(ClipperDemo());

// class ClipperDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//     );
//   }
// }
// import 'container_to_clip.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
// import 'container_to_clip.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipper Demo'),
      ),
      body: Container(
        // decoration: DecoratedBox(),
        child: ListView(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 100,
                color: Colors.deepOrange,
                child: Text('Type 2'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
