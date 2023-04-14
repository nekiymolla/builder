import 'package:builder/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstBoarding extends StatefulWidget {
  const FirstBoarding({super.key});

  @override
  State<FirstBoarding> createState() => _FirstBoardingState();
}

class _FirstBoardingState extends State<FirstBoarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(
            flex: 1,
          ),
          mainText(
              'Добро пожаловать в приложение удобный строитель!', Colors.black),
          const Spacer(
            flex: 1,
          ),
          Lottie.asset('assets/animations/onboarding/first_page_anim.json'),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}
