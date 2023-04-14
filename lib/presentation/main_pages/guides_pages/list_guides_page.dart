import 'package:flutter/material.dart';

class ListGuidesPage extends StatefulWidget {
  const ListGuidesPage({super.key});

  @override
  State<ListGuidesPage> createState() => _ListGuidesPageState();
}

class _ListGuidesPageState extends State<ListGuidesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(),
        ),
      ),
    );
  }
}
