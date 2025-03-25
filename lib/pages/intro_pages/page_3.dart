import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingContent(
                image: 'asset/images/ad.png', // Ensure this path is correct
                title: 'Boost Your Productivity',
                desc:
                    'Stay focused and accomplish your goals with our intuitive task management tools. Track progress, set reminders, and get notifications, ensuring you\'re always on top of your tasks.',
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
