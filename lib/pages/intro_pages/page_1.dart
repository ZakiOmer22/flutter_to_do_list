import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingContent(
                image:
                    'asset/images/image.png', // Make sure this path is correct
                title: 'Welcome to To-Do List App',
                desc: 'Manage your tasks easily and efficiently',
              ),
            ),
            SizedBox(
              height: 250, // You might want to adjust this height as needed
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
          textAlign: TextAlign.center,
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          textAlign: TextAlign.center,
          desc,
        ),
        const Spacer(),
      ],
    );
  }
}
