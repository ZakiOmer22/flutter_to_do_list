import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_list/home.dart';
import 'package:to_do_list/pages/intro_pages/page_1.dart';
import 'package:to_do_list/pages/intro_pages/page_2.dart';
import 'package:to_do_list/pages/intro_pages/page_3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = new PageController();
  bool isPageChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) => {
            setState(() {
              isPageChanged = (index == 2);
            })
          },
          controller: _controller,
          children: [
            PageOne(),
            PageTwo(),
            PageThree(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => {
                  _controller.jumpToPage(2),
                },
                child: Text('SKIP'),
              ),
              SmoothPageIndicator(controller: _controller, count: 3),
              isPageChanged
                  ? GestureDetector(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }))
                      },
                      child: Text('DONE'),
                    )
                  : GestureDetector(
                      onTap: () => {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                        )
                      },
                      child: Text('NEXT'),
                    ),
            ],
          ),
        )
      ],
    ));
  }
}
