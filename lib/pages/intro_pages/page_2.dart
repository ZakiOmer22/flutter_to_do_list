import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingContent(
                image: 'asset/images/lib.png', // Ensure this path is correct
                title: 'Stay Organized',
                desc:
                    'Keep track of your tasks in a simple and effective way. Our app allows you to categorize, prioritize, and manage your to-do lists easily. Never miss a deadline again!',
              ),
            ),
            SizedBox(
              height: 250, // Adjust according to your design needs
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });

  final String image, title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 350,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
