import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(title: Text("shahab niazi")),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white10,
          width: 100,
          height: 100,
          padding: EdgeInsets.only(right: 100),
        ),
      ),
    );
  }
}
