import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/texts.dart';

class TwiceBoarding extends StatefulWidget {
  const TwiceBoarding({super.key});

  @override
  State<TwiceBoarding> createState() => _TwiceBoardingState();
}

class _TwiceBoardingState extends State<TwiceBoarding> {
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
              'Найдите уникальный для себя проект и договоритесь с владельцем',
              Colors.black),
          const Spacer(
            flex: 1,
          ),
          Lottie.asset('assets/animations/onboarding/twice_page_anim.json'),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}
