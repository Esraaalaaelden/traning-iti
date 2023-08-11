import 'package:flutter/cupertino.dart';

class body1 extends StatefulWidget {
  const body1({Key? key}) : super(key: key);

  @override
  State<body1> createState() => _body1State();
}

class _body1State extends State<body1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Page1"),
    );
  }
}
