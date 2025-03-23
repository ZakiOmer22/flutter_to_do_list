import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Colors.greenAccent,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(110, 400, 100, 10),
            child: Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
              ),
              "eALIF Team",
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(95, 450, 20, 10),
            child: Text(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
              "Transform your Vision into Real life reality",
            ),
          ),
        ],
      )),
    );
  }
}
