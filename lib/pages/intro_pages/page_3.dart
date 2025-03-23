import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(130, 430, 100, 10),
            child: Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
              ),
              "Page Three",
            ),
          ),
        ],
      )),
    );
  }
}
