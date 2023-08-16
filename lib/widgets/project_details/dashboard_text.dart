import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardText extends StatelessWidget {
  const DashBoardText({super.key, required this.title, required this.itemText});
  final String title;
  final String itemText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: title,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: itemText,
            style: GoogleFonts.nunito(
              fontSize: 14,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
