import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/texts.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(
            flex: 1,
          ),
          mainText('Читайте полезные советы опытных строителей', Colors.black),
          const Spacer(
            flex: 1,
          ),
          Lottie.asset('assets/animations/onboarding/third_page_anim.json'),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
