// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../presentation/main_pages/blueprints_pages/list_blueprints_page.dart'
    as _i3;
import '../presentation/main_pages/bottom_navigation_page.dart' as _i2;
import '../presentation/main_pages/chat_pages/list_chats_page.dart' as _i4;
import '../presentation/main_pages/guides_pages/list_guides_page.dart' as _i6;
import '../presentation/main_pages/new_blueprints_pages/new_blueprint_page.dart'
    as _i5;
import '../presentation/main_pages/profile_pages/profile_page.dart' as _i7;
import '../presentation/on_boarding/on_boarding_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    OnBoardingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnBoarding(),
      );
    },
    Bottomnavpageroute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavPage(),
      );
    },
    BluePrintsPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.BluePrintsPage(),
      );
    },
    ListChatPagesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ListChatsPage(),
      );
    },
    UploadBluePrintPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.UploadBluePrintPage(),
      );
    },
    ListGuidesPagesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ListGuidesPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          OnBoardingRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          Bottomnavpageroute.name,
          path: '/bottomnavpage',
          children: [
            _i8.RouteConfig(
              BluePrintsPageRoute.name,
              path: 'blueprintspage',
              parent: Bottomnavpageroute.name,
            ),
            _i8.RouteConfig(
              ListChatPagesRoute.name,
              path: 'listchatpages',
              parent: Bottomnavpageroute.name,
            ),
            _i8.RouteConfig(
              UploadBluePrintPageRoute.name,
              path: 'uploadblueprintpage',
              parent: Bottomnavpageroute.name,
            ),
            _i8.RouteConfig(
              ListGuidesPagesRoute.name,
              path: 'listguidespages',
              parent: Bottomnavpageroute.name,
            ),
            _i8.RouteConfig(
              ProfilePageRoute.name,
              path: 'profilepage',
              parent: Bottomnavpageroute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.OnBoarding]
class OnBoardingRoute extends _i8.PageRouteInfo<void> {
  const OnBoardingRoute()
      : super(
          OnBoardingRoute.name,
          path: '/',
        );

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i2.BottomNavPage]
class Bottomnavpageroute extends _i8.PageRouteInfo<void> {
  const Bottomnavpageroute({List<_i8.PageRouteInfo>? children})
      : super(
          Bottomnavpageroute.name,
          path: '/bottomnavpage',
          initialChildren: children,
        );

  static const String name = 'Bottomnavpageroute';
}

/// generated route for
/// [_i3.BluePrintsPage]
class BluePrintsPageRoute extends _i8.PageRouteInfo<void> {
  const BluePrintsPageRoute()
      : super(
          BluePrintsPageRoute.name,
          path: 'blueprintspage',
        );

  static const String name = 'BluePrintsPageRoute';
}

/// generated route for
/// [_i4.ListChatsPage]
class ListChatPagesRoute extends _i8.PageRouteInfo<void> {
  const ListChatPagesRoute()
      : super(
          ListChatPagesRoute.name,
          path: 'listchatpages',
        );

  static const String name = 'ListChatPagesRoute';
}

/// generated route for
/// [_i5.UploadBluePrintPage]
class UploadBluePrintPageRoute extends _i8.PageRouteInfo<void> {
  const UploadBluePrintPageRoute()
      : super(
          UploadBluePrintPageRoute.name,
          path: 'uploadblueprintpage',
        );

  static const String name = 'UploadBluePrintPageRoute';
}

/// generated route for
/// [_i6.ListGuidesPage]
class ListGuidesPagesRoute extends _i8.PageRouteInfo<void> {
  const ListGuidesPagesRoute()
      : super(
          ListGuidesPagesRoute.name,
          path: 'listguidespages',
        );

  static const String name = 'ListGuidesPagesRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i8.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: 'profilepage',
        );

  static const String name = 'ProfilePageRoute';
}
