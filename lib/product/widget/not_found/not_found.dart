import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotFoundNavigationWidget extends StatelessWidget {
  const NotFoundNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Not Found"),
    );
  }
}
