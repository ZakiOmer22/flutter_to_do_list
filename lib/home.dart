import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _PageOneState();
}

class _PageOneState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
              // color: Colors.greenAccent,
              ),
          Container(
            margin: EdgeInsets.fromLTRB(110, 440, 100, 10),
            child: Text(
              style: TextStyle(
                color: Colors.green,
                fontSize: 34.0,
              ),
              "HOME PAGE",
            ),
          ),
        ],
      )),
    );
  }
}
