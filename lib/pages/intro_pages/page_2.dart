import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(130, 430, 100, 10),
            child: Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
              ),
              "Page Two",
            ),
          ),
        ],
      )),
    );
  }
}
