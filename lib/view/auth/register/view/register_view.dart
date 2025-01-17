import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/base/view/base_widget.dart';
import '../../../_product/_constants/image_path_svg.dart';
import '../../../_product/widget/text/local_custom_text.dart';
import '../viewmodel/register_view_model.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
      viewModel: RegisterViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, RegisterViewModel viewModel) =>
          Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(30.0), child: AppBar()),
        key: viewModel.scaffoldKey,
        body: Padding(
          padding: context.paddingMedium,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSingUpTitle(),
                context.emptySizedHeightBoxLow,
                buildSingInContent(context),
                context.emptySizedHeightBoxLow,
                buildContinueGoogle(context),
                context.emptySizedHeightBoxLow,
                buildDivider(context),
                context.emptySizedHeightBoxLow,
                buildUsernameText(),
                context.emptySizedHeightBoxLow,
                buildUsernameInput(viewModel, context),
                context.emptySizedHeightBoxLow,
                buildSurnameText(),
                context.emptySizedHeightBoxLow,
                buildSurnameInput(viewModel, context),
                context.emptySizedHeightBoxLow,
                buildEmailText(),
                context.emptySizedHeightBoxLow,
                buildEmailInput(viewModel, context),
                context.emptySizedHeightBoxLow,
                buildPasswordText(),
                context.emptySizedHeightBoxLow,
                buildPasswordInput(viewModel, context),
                context.emptySizedHeightBoxNormal,
                buildLoginButtom(viewModel, context),
                context.emptySizedHeightBoxLow,
                buildSingInText(viewModel, context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  LocaleText buildPasswordText() {
    return const LocaleText(
      value: "Password",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildUsernameText() {
    return const LocaleText(
      value: "Name",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildSurnameText() {
    return const LocaleText(
      value: "Surname",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildEmailText() {
    return const LocaleText(
      value: "Email",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildSingUpTitle() => const LocaleText(
        value: "Join Us",
        style: TextStyle(fontSize: 24),
      );

  LocaleText buildSingInContent(BuildContext context) {
    return LocaleText(
      value: "Welcome Back Welcome Back Welcome Back Welcome Back Welcome Back",
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: context.colorScheme.onPrimary),
    );
  }

  Row buildSingInText(RegisterViewModel viewModel, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        LocaleText(
          value: "Already have an account? ",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        InkWell(
          onTap: () => viewModel.navigateToLogin(),
          child: LocaleText(
            value: "Log In",
            style: TextStyle(
              color: context.colorScheme.onBackground,
              decoration: TextDecoration.underline,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }

  TextField buildUsernameInput(
      RegisterViewModel viewModel, BuildContext context) {
    return TextField(
      controller: viewModel.nameController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colorScheme.secondary)),
          fillColor: context.colorScheme.primary,
          hintText: 'Enter Your Name',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colorScheme.secondary,
          )),
    );
  }

  TextField buildSurnameInput(
      RegisterViewModel viewModel, BuildContext context) {
    return TextField(
      controller: viewModel.surnameController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colorScheme.secondary)),
          fillColor: context.colorScheme.primary,
          hintText: 'Enter Your Surname',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colorScheme.secondary,
          )),
    );
  }

  TextField buildEmailInput(RegisterViewModel viewModel, BuildContext context) {
    return TextField(
      controller: viewModel.emailController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colorScheme.secondary)),
          fillColor: context.colorScheme.primary,
          hintText: 'Enter Your Email',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colorScheme.secondary,
          )),
    );
  }

  TextField buildPasswordInput(
      RegisterViewModel viewModel, BuildContext context) {
    return TextField(
      controller: viewModel.passwordController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colorScheme.secondary)),
          fillColor: context.colorScheme.primary,
          hintText: 'Enter Your Password',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colorScheme.secondary,
          )),
    );
  }

  Row buildDivider(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(child: Divider(color: context.colorScheme.secondary)),
      Padding(
        padding: context.horizontalPaddingLow,
        child: LocaleText(
          value: "OR",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: context.colorScheme.onSecondary.withOpacity(0.20)),
        ),
      ),
      Expanded(child: Divider(color: context.colorScheme.secondary)),
    ]);
  }

  Container buildContinueGoogle(BuildContext context) {
    return Container(
      width: 330,
      height: 53,
      decoration: BoxDecoration(
          border: Border.all(
            color: context.colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSvgPicture(SVGImagePaths.instance.googleSVG),
          const SizedBox(width: 16),
          const LocaleText(
            value: "Continue with google",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  InkWell buildLoginButtom(RegisterViewModel viewModel, BuildContext context) {
    return InkWell(
      onTap: () => viewModel.register(),
      child: Container(
        width: 330,
        height: 53,
        decoration: BoxDecoration(
            color: context.colorScheme.onBackground,
            border: Border.all(
              color: context.colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 16),
            LocaleText(
              value: "GET STARTED",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: context.colorScheme.primary),
            )
          ],
        ),
      ),
    );
  }
}
