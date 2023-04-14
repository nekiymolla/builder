import 'package:auto_route/auto_route.dart';
import 'package:builder/router/router.gr.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        routes: const [
          BluePrintsPageRoute(),
          ListChatPagesRoute(),
          UploadBluePrintPageRoute(),
          ListGuidesPagesRoute(),
          ProfilePageRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return DotNavigationBar(
              marginR: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              borderRadius: 25,
              enableFloatingNavBar: true,
              backgroundColor: const Color(0xFF3A557E),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              dotIndicatorColor: Colors.white,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                DotNavigationBarItem(
                  icon: const Icon(Icons.maps_home_work_outlined),
                  selectedColor: Colors.white,
                ),
                //chat
                DotNavigationBarItem(
                  icon: const Icon(Icons.chat_outlined),
                  selectedColor: Colors.white,
                ),
                //map
                DotNavigationBarItem(
                  icon: const Icon(Icons.add),
                  selectedColor: Colors.white,
                ),
                //profile
                DotNavigationBarItem(
                  icon: const Icon(Icons.filter_none),
                  selectedColor: Colors.white,
                ),
                DotNavigationBarItem(
                  icon: const Icon(Icons.person_outline_rounded),
                  selectedColor: Colors.white,
                ),
              ]);
        });
  }
}
