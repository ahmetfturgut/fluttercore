

import 'package:core_flutter_app/core/init/theme/light/padding_insets.dart';
import 'package:core_flutter_app/core/init/theme/light/text_theme_light.dart';

import 'color_scheme_light.dart';

abstract class ILightTheme {
  TextThemeLight? textThemeLight = TextThemeLight.instance;
  ColorSchemeLight? colorSchemeLight = ColorSchemeLight.instance;
  PaddingInsets insets = PaddingInsets();
}
