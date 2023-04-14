import 'package:flutter/material.dart';

class UploadBluePrintPage extends StatefulWidget {
  const UploadBluePrintPage({super.key});

  @override
  State<UploadBluePrintPage> createState() => UploadBluePrintPageState();
}

class UploadBluePrintPageState extends State<UploadBluePrintPage> {
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
