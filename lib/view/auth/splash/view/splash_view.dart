import 'package:flutter/material.dart';

import '../../../../core/base/view/base_widget.dart';
import '../../../../core/constants/image/image_constatns.dart';
import '../viewmodel/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      viewModel: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, SplashViewModel viewModel) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.instance.splashScreen),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Text("APP NAME")),
      ),
    );
  }
}
