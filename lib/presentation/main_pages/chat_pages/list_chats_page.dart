import 'package:flutter/material.dart';

class ListChatsPage extends StatefulWidget {
  const ListChatsPage({super.key});

  @override
  State<ListChatsPage> createState() => _ListChatsPageState();
}

class _ListChatsPageState extends State<ListChatsPage> {
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
