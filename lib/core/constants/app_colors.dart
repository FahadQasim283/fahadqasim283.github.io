import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary color palette
  static const Color primary = Color(0xFF2A9D8F); // Calming teal
  static const Color secondary = Color(0xFF3A506B); // Deep navy
  static const Color accent = Color(0xFF5BC0BE); // Fresh cyan

  // Background colors
  static const Color backgroundLight = Color(0xFFF8F9FA); // Light gray for web
  static const Color backgroundDark = Color(0xFF0B132B); // Deep space blue
  static const Color cardLight = Color(0xFFFFFFFF); // White cards for light theme
  static const Color cardDark = Color(0xFF1F2833); // Dark cards for dark theme

  // Text colors
  static const Color textPrimary = Color(0xFF0B132B); // Dark blue for light backgrounds
  static const Color textSecondary = Color(0xFF6B7280); // Gray for subtitles
  static const Color textWhite = Color(0xFFFFFFFF); // White for dark backgrounds
  static const Color textAccent = Color(0xFF5BC0BE); // Cyan for highlights

  // Button colors
  static const Color buttonPrimary = Color(0xFF2A9D8F); // Teal for primary buttons
  static const Color buttonHover = Color(0xFF24877B); // Darker teal for hover
  static const Color buttonSecondary = Color(0xFF3A506B); // Navy for secondary buttons

  // System colors
  static const Color success = Color(0xFF6BCB77); // Green for success states
  static const Color error = Color(0xFFFF6B6B); // Red for errors
  static const Color warning = Color(0xFFFFD93D); // Yellow for warnings

  // Gradient definitions
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [cardDark, Color(0xFF2A2A2A)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Social media button background
  static const Color socialButtonBg = Color(0xFF2A2D32);
}
