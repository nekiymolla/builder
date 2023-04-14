import 'package:auto_route/annotations.dart';
import 'package:builder/presentation/main_pages/blueprints_pages/list_blueprints_page.dart';
import 'package:builder/presentation/main_pages/bottom_navigation_page.dart';
import 'package:builder/presentation/main_pages/chat_pages/list_chats_page.dart';
import 'package:builder/presentation/main_pages/guides_pages/list_guides_page.dart';
import 'package:builder/presentation/main_pages/new_blueprints_pages/new_blueprint_page.dart';
import 'package:builder/presentation/main_pages/profile_pages/profile_page.dart';
import 'package:builder/presentation/on_boarding/on_boarding_page.dart';

@MaterialAutoRouter(
  routes: [
  AutoRoute(page: OnBoarding, initial: true),
  AutoRoute(
      page: BottomNavPage,
      path: '/bottomnavpage',
      name: 'bottomnavpageroute',
      children: [
        AutoRoute(
          page: BluePrintsPage,
          path: 'blueprintspage',
          name: 'BluePrintsPageRoute',
        ),
        AutoRoute(
          page: ListChatsPage,
          path: 'listchatpages',
          name: 'ListChatPagesRoute',
        ),
        AutoRoute(
          page: UploadBluePrintPage,
          path: 'uploadblueprintpage',
          name: 'UploadBluePrintPageRoute',
        ),
        AutoRoute(
          page: ListGuidesPage,
          path: 'listguidespages',
          name: 'ListGuidesPagesRoute',
        ),
        AutoRoute(
          page: ProfilePage,
          path: 'profilepage',
          name: 'ProfilePageRoute',
        ),
      ]),
])
class $AppRouter {}
