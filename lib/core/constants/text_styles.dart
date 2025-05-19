import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class TextStyles {
  TextStyles._();

  // Responsive font size helper
  static double _responsiveFontSize(BuildContext context, double baseSize) {
    final scaleFactor = MediaQuery.of(context).textScaleFactor;
    final width = MediaQuery.of(context).size.width;
    double multiplier =
        width < 600
            ? 0.9
            : width < 1200
            ? 1.0
            : 1.1;
    return baseSize * scaleFactor * multiplier;
  }

  // Heading styles
  static TextStyle heading1(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 36),
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
  );

  static TextStyle heading2(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 28),
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle heading3(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 22),
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Body text styles
  static TextStyle bodyLarge(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 16),
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
    height: 1.5,
  );

  static TextStyle bodyMedium(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 14),
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  static TextStyle bodySmall(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 12),
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  // Button text style
  static TextStyle button(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 16),
    fontWeight: FontWeight.w500,
    color: AppColors.textWhite,
  );

  // Caption and subtitle styles
  static TextStyle caption(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 12),
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static TextStyle subtitle(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 18),
    fontWeight: FontWeight.w500,
    color: AppColors.textAccent,
  );

  // Accent text for highlights
  static TextStyle accentText(BuildContext context) => TextStyle(
    fontFamily: GoogleFonts.chakraPetch().fontFamily,
    fontSize: _responsiveFontSize(context, 16),
    fontWeight: FontWeight.w600,
    color: AppColors.textAccent,
  );
}
