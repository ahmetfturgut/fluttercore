import 'package:core_flutter_app/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../widget/circle_decoration.dart';

class DecorationHelper {
  DecorationHelper({
    this.context,
  });

  BuildContext? context;

  Decoration get circleDecoriaton =>
      CircleDecoration(color: context!.colors.onBackground, radius: 3);
}
