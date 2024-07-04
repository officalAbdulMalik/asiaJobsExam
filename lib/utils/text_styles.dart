import 'package:asia_jobs/imports.dart';

class Styles {
  static TextStyle sfMedium(
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 15,
        letterSpacing: letterSpacing ?? 0,
        color: color,
        fontFamily: "SF UI Display Medium",
        fontWeight: fontWeight ?? FontWeight.bold);
  }

  static TextStyle sfBold({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 15,
      letterSpacing: letterSpacing ?? 0,
      color: color,
      fontFamily: "SF UI Display Bold",
      fontWeight: fontWeight ?? FontWeight.bold,
      decoration: decoration,
    );
  }

  static TextStyle sfSemiBold(
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 15,
        letterSpacing: letterSpacing ?? 0,
        color: color,
        fontFamily: "SF UI Display Semibold",
        fontWeight: fontWeight ?? FontWeight.bold);
  }

  static TextStyle sfLight(
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 15,
        letterSpacing: letterSpacing ?? 0,
        color: color,
        fontFamily: "SF UI Display Light",
        fontWeight: fontWeight ?? FontWeight.bold);
  }

  static TextStyle sfThin(
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 15,
        letterSpacing: letterSpacing ?? 0,
        color: color,
        fontFamily: "SF UI Display Thin",
        fontWeight: fontWeight ?? FontWeight.bold);
  }

  static TextStyle sfUltraBold(
      {double? fontSize,
      Color? color,
      FontWeight? fontWeight,
      double? letterSpacing}) {
    return TextStyle(
        fontSize: fontSize ?? 15,
        letterSpacing: letterSpacing ?? 0,
        color: color,
        fontFamily: "SF UI Display Heavy",
        fontWeight: fontWeight ?? FontWeight.bold);
  }
}
