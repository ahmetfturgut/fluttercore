import 'dart:math';

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal =>
      EdgeInsets.symmetric(horizontal: highValue);
}

// SizedBox Extensions for Responsive Design
extension SizedBoxExtension on BuildContext {
  // Height SizedBox
  SizedBox get emptySizedHeightBoxLow => SizedBox(height: lowValue);
  SizedBox get emptySizedHeightBoxNormal => SizedBox(height: normalValue);
  SizedBox get emptySizedHeightBoxMedium => SizedBox(height: mediumValue);
  SizedBox get emptySizedHeightBoxHigh => SizedBox(height: highValue);
  SizedBox get emptySizedHeightBoxLow3x => SizedBox(height: lowValue * 3);

  // Width SizedBox
  SizedBox get emptySizedWidthBoxLow => SizedBox(width: lowValue);
  SizedBox get emptySizedWidthBoxNormal => SizedBox(width: normalValue);
  SizedBox get emptySizedWidthBoxMedium => SizedBox(width: mediumValue);
  SizedBox get emptySizedWidthBoxHigh => SizedBox(width: highValue);
  SizedBox get emptySizedWidthBoxLow3x => SizedBox(width: lowValue * 3);
}

extension PageExtension on BuildContext {
  Color get randomColor => Colors.primaries[Random().nextInt(17)];
}

extension DurationExtension on BuildContext {
  Duration get lowDuration => const Duration(milliseconds: 500);
  Duration get normalDuration => const Duration(seconds: 1);
  Duration get durationLow => const Duration(milliseconds: 500);
}
