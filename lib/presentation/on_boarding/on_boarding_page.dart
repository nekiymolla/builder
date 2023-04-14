import 'package:auto_route/auto_route.dart';
import 'package:builder/presentation/on_boarding/first_boarding.dart';
import 'package:builder/presentation/on_boarding/third_boarding.dart';
import 'package:builder/presentation/on_boarding/twice_boarding.dart';
import 'package:builder/router/router.gr.dart';
import 'package:builder/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == 2;
                });
              },
              children: const <Widget>[
                FirstBoarding(),
                TwiceBoarding(),
                ThirdPage(),
              ],
            ),
          ),
          bottomSheet: isLastPage
              ? Container(
                  height: 120,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 45,
                        child: OnBoardingButtons(
                            fontColor: Colors.white,
                            color: const Color(0xFF3A557E),
                            label: 'Продолжить',
                            onPressed: () {
                              context.router
                                  .replaceAll([const Bottomnavpageroute()]);
                            }),
                      ),
                    ],
                  ),
                )
              : Container(
                  color: Colors.white,
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const WormEffect(
                            spacing: 16,
                            dotColor: Color(0xFFD3D3D3),
                            activeDotColor: Color(0xFF3A557E),
                          ),
                          onDotClicked: (index) {
                            controller.animateToPage(index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: OnBoardingButtons(
                              fontColor: Colors.white,
                              color: const Color(0xFF3A557E),
                              label: 'Пропустить',
                              onPressed: () {
                                context.router
                                    .replaceAll([const Bottomnavpageroute()]);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 60,
                            child: OnBoardingButtons(
                              fontColor: const Color(0xFF3A557E),
                              color: Colors.white,
                              label: 'Дальше',
                              onPressed: () {
                                controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
