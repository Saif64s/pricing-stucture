import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjText extends StatelessWidget {
  const ProjText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}
