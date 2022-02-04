import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _googleFonts = GoogleFonts.ptSans(fontStyle: FontStyle.normal);
headLine6Style(Color color) => _googleFonts.copyWith(fontSize: 15.0, fontWeight: FontWeight.w700, color: color, height: 1.3);
headLine5Style(Color color) => _googleFonts.copyWith(letterSpacing: 0.8, fontSize: 16.0, fontWeight: FontWeight.w700, color: color, height: 1.3);
headLine4Style(Color color) => _googleFonts.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400, color: color, height: 1.3);
headLine3Style(Color color) => _googleFonts.copyWith(fontSize: 20.0, fontWeight: FontWeight.w700, color: color, height: 1.3);
headLine2Style(Color color) => _googleFonts.copyWith(fontSize: 22.0, fontWeight: FontWeight.w700, color: color, height:  1.3);
headLine1Style(Color color) => _googleFonts.copyWith(fontSize: 24.0, fontWeight: FontWeight.w300, color: color, height:  1.3);
subtitle2Style(Color color) => _googleFonts.copyWith(fontSize: 15.0, fontWeight: FontWeight.w600, color: color, height:  1.3);
subtitle1Style(Color color) => _googleFonts.copyWith(fontSize: 13.0, fontWeight: FontWeight.w400, color: color, height: 1.3);
bodyText2Style(Color color) => _googleFonts.copyWith(fontSize: 13.0, fontWeight: FontWeight.w600, color: color, height:  1.2);
bodyText1Style(Color color) => _googleFonts.copyWith(fontSize: 12.0, fontWeight: FontWeight.w400, color: color, height: 1.3);
captionStyle(Color color) => _googleFonts.copyWith(fontSize: 12.0, fontWeight: FontWeight.w300, color: color, height:  1.3);