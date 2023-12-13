import 'package:flutter/widgets.dart';

abstract class AppTextStyles {
  static const displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    height: 1.12, // 64px
    letterSpacing: -0.25,
    fontFamily: 'Roboto',
  );

  static const displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    height: 1.16, // 52px
    fontFamily: 'Roboto',
  );

  static const displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    height: 1.22, // 44px
    fontFamily: 'Roboto',
  );

  static const headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    height: 1.25, // 40px
    fontFamily: 'Roboto',
  );

  static const headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.29, // 36px
    fontFamily: 'Roboto',
  );

  static const headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.33, // 32px
    fontFamily: 'Roboto',
  );

  static const titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.27, // 28px
    fontFamily: 'Roboto',
  );

  static const titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5, // 24px
    letterSpacing: 0.15,
    fontFamily: 'Roboto',
  );

  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43, // 20px
    letterSpacing: 0.1,
    fontFamily: 'Roboto',
  );

  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5, // 24px
    letterSpacing: 0.5,
    fontFamily: 'Roboto',
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43, // 20px
    letterSpacing: 0.25,
    fontFamily: 'Roboto',
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33, // 16px
    fontFamily: 'Roboto',
  );

  static const labelLargeProminent = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.43, // 20px
    letterSpacing: 0.1,
    fontFamily: 'Roboto',
  );

  static const labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43, // 20px
    letterSpacing: 0.1,
    fontFamily: 'Roboto',
  );

  static const labelMediumProminent = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.33, // 16px
    letterSpacing: 0.5,
    fontFamily: 'Roboto',
  );

  static const labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33, // 16px
    letterSpacing: 0.5,
    fontFamily: 'Roboto',
  );

  static const labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.45, // 16px
    letterSpacing: 0.5,
    fontFamily: 'Roboto',
  );

  const AppTextStyles._();
}
