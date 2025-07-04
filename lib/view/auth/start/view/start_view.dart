import 'package:flutter/material.dart';

import '../../../../core/base/view/base_widget.dart';
import '../../../../core/constants/image/image_constatns.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../_product/widget/text/local_custom_text.dart';
import '../viewmodel/start_view_model.dart';

class StartView extends StatelessWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<StartViewModel>(
      viewModel: StartViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, StartViewModel viewModel) =>
          Scaffold(
              body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LocaleText(value: "APP NAME"),
          buildImage(),
          context.emptySizedHeightBoxLow,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                buildTitle(context),
                context.emptySizedHeightBoxLow3x,
                builddContent(context),
                context.emptySizedHeightBoxNormal,
                buildGetStartedButtom(viewModel, context),
                context.emptySizedHeightBoxLow3x,
                buildContinueGuest(viewModel, context)
              ],
            ),
          )
        ],
      )),
    );
  }

  LocaleText builddContent(BuildContext context) {
    return LocaleText(
      value: "Sign up to get the latest software news. Let's get started!",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: context.colors.surface),
    );
  }

  LocaleText buildTitle(BuildContext context) {
    return LocaleText(
      value: "Discover and learn all about the software",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: context.colors.onSurface),
    );
  }

  Stack buildImage() {
    return Stack(
      children: [
        Container(
          width: 454,
          height: 381,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstants.instance.startImage),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 392,
              height: 114,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstants.instance.gradient),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  InkWell buildGetStartedButtom(
      StartViewModel viewModel, BuildContext context) {
    return InkWell(
      onTap: () => viewModel.getStarted(),
      child: Container(
        width: 330,
        height: 53,
        decoration: BoxDecoration(
            color: context.colors.onSurface,
            border: Border.all(
              color: context.colors.primary,
            ),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LocaleText(
              value: "GET STARTED",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: context.colors.primary),
            )
          ],
        ),
      ),
    );
  }

  Row buildContinueGuest(StartViewModel viewModel, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => viewModel.continueGuest(),
          child: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: LocaleText(
              value: "Continue as Guest",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
