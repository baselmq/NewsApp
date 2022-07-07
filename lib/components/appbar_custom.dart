import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar customAppBar({String title = 'BBC'}) {
  return AppBar(
    backgroundColor: Colors.indigo,
    title: Text(title, style: GoogleFonts.pacifico()),
    centerTitle: true,
  );
}
