import 'package:builder/presentation/on_boarding/on_boarding_page.dart';
import 'package:builder/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  final _appRouter = AppRouter();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerDelegate: _appRouter.delegate(),
    routeInformationParser: _appRouter.defaultRouteParser(),
  ));
}
