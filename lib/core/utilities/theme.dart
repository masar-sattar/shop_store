import 'package:flutter/material.dart';
import 'package:shop_store/core/utilities/app_colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "LANTX",
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: BoxDecoration(
      color: AppColors.lightboder,
      borderRadius: BorderRadius.circular(50),
    ),
    labelPadding: EdgeInsets.zero,
    overlayColor: WidgetStateColor.transparent,
  ),
  // textTheme: TextTheme(
  //   bodyLarge: const TextStyle(
  //     fontFamily: 'LANTX',
  //     fontSize: 16,
  //     //fontWeight: FontWeightHelper.bold,
  //     // letterSpacing: 1.2,
  //     color: Colors.black,
  //   ),
  //   bodyMedium: const TextStyle(
  //     fontFamily: 'LANTX',
  //     fontSize: 14,
  //     //fontWeight: FontWeightHelper.semiBold,
  //     color: Colors.black,
  //   ),
  //   bodySmall: TextStyle(
  //     fontFamily: 'LANTX',
  //     fontSize: 12,
  //     //fontWeight: FontWeightHelper.regular,
  //     color: Colors.black.withOpacity(0.5),
  //   ),
  // ),
);
