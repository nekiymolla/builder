import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class blueprintPreview extends StatelessWidget {
  blueprintPreview({
    super.key,
    this.onTap,
    required this.name,
    this.preview,
  });

  Function()? onTap;
  String name;
  Image? preview;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF3A557E),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ]),
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          const Spacer(flex: 1),
          Center(
            child: Text(
              name,
              style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
