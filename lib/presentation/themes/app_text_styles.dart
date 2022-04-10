import 'package:flutter/material.dart';
import 'app_colors.dart';

/// List of the Customers text styles.
class AppTextStyles {
  static const FontWeight _semiBold = FontWeight.w600;
  static const FontWeight _large = FontWeight.w900;

  /// Text label of home item card.
  static const TextStyle homeTitleItemCard = TextStyle(
      fontSize: 20, fontWeight: _semiBold, color: AppColors.kBlackColor);

  /// Text label of features.
  static const TextStyle featuresText =
      TextStyle(fontSize: 20, fontWeight: _large, color: AppColors.kBlackColor);

  /// Text label of carousel header.
  static const TextStyle carouselTitle = TextStyle(
      fontSize: 30, fontWeight: _semiBold, color: AppColors.kBlackColor);

  /// button of simple calculator.
  static const TextStyle simpleCalButton =
      TextStyle(fontSize: 20, fontWeight: _large, color: AppColors.kWhiteColor);
}
