import 'package:flutter/material.dart';
import 'color.dart';
import 'style.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(
        headline6: headLine6Style(const Color(0xFFFA4F26)),
        headline5: headLine5Style(const Color(0xFF08143a)),
        headline4: headLine4Style(const Color(0xFF08143a)),
        headline3: headLine3Style(const Color(0xFF08143a)),
        headline2: headLine2Style(const Color(0xFFFA4F26)),
        headline1: headLine1Style(const Color(0xFF08143a)),
        subtitle2: subtitle2Style(const Color(0xFF08143a)),
        subtitle1: subtitle1Style(const Color(0xFFFA4F26)),
        bodyText2: bodyText2Style(const Color(0xFF08143a)),
        bodyText1: bodyText1Style(const Color(0xFF08143a)),
        caption: captionStyle(const Color(0xFF8C9DA8))),
    dividerColor: const Color(0xFF8C9DA8).withOpacity(0.1),
    focusColor: const Color(0xFF8C9DA8),
    hintColor: const Color(0xFF08143a),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: const Color(0xFFEF5523))),
    colorScheme: const ColorScheme.light(
        primary: Color(0xFFEF5523), secondary: Color(0xFFEF5523)),
    unselectedWidgetColor: Colors.grey,
    selectedRowColor: const Color(0xFF2E7D32).withOpacity(0.1),
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Color(0xFF000000)),
    primaryColor: const Color(0xFFEF5523),
    indicatorColor: const Color(0xFFFFEAD1));

final ThemeData darkTheme = ThemeData.light().copyWith(
  textTheme: TextTheme(
      headline6: headLine6Style(const Color(0xFFEF5523)),
      headline5: headLine5Style(const Color(0xFFCCCCDD)),
      headline4: headLine4Style(const Color(0xFFCCCCDD)),
      headline3: headLine3Style(const Color(0xFFCCCCDD)),
      headline2: headLine2Style(const Color(0xFFEF5523)),
      headline1: headLine1Style(const Color(0xFFCCCCDD)),
      subtitle2: subtitle2Style(const Color(0xFFCCCCDD)),
      subtitle1: subtitle1Style(const Color(0xFFEF5523)),
      bodyText2: bodyText2Style(const Color(0xFFCCCCDD)),
      bodyText1: bodyText1Style(const Color(0xFFCCCCDD)),
      caption: captionStyle(const Color(0xFF9999AA))),
  scaffoldBackgroundColor: scaffoldBackgroundThemeDarkColor,
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF252525),
  iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
  cardColor: const Color(0xFF252525),
  dividerColor: const Color(0xFF9999aa).withOpacity(0.1),
  focusColor: const Color(0xFF9999aa),
  hintColor: const Color(0xFFCCCCDD),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: const Color(0xFFEF5523))),
  colorScheme: const ColorScheme.dark(
      primary: Color(0xFFEF5523), secondary: Color(0xFFEF5523)),
  unselectedWidgetColor: Colors.grey,
  selectedRowColor: const Color(0xFF2E7D32).withOpacity(0.1),
);
