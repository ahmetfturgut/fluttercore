import 'package:core_flutter_app/core/extension/context_extension.dart';
import 'package:flutter/material.dart';


class OnBoardCircle extends StatelessWidget {
  const OnBoardCircle({Key? key, required this.isSelected}) : super(key: key);
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: CircleAvatar(
        backgroundColor:
            context.colors.onError.withOpacity(isSelected ? 1 : 0.2),
        radius: isSelected ? context.width * 0.015 : context.width * 0.01,
      ),
    );
  }
}
