import 'package:flutter/material.dart';

import '../../../../core/base/view/base_widget.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../_product/widget/text/local_custom_text.dart';
import '../viewmodel/register_view_model.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
          color: context.colors.onPrimary),
    );
  }

  Row buildSingInText(RegisterViewModel viewModel, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
              color: context.colors.onSurface,
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
              borderSide: BorderSide(color: context.colors.secondary)),
          fillColor: context.colors.primary,
          hintText: 'Enter Your Name',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colors.secondary,
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
              borderSide: BorderSide(color: context.colors.secondary)),
          fillColor: context.colors.primary,
          hintText: 'Enter Your Surname',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colors.secondary,
          )),
    );
  }

  TextField buildEmailInput(RegisterViewModel viewModel, BuildContext context) {
    return TextField(
      controller: viewModel.emailController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: context.colors.secondary)),
          fillColor: context.colors.primary,
          hintText: 'Enter Your Email',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colors.secondary,
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
              borderSide: BorderSide(color: context.colors.secondary)),
          fillColor: context.colors.primary,
          hintText: 'Enter Your Password',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            color: context.colors.secondary,
          )),
    );
  }

  Row buildDivider(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(child: Divider(color: context.colors.secondary)),
      Padding(
        padding: context.paddingLowHorizontal,
        child: LocaleText(
          value: "OR",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: context.colors.onSecondary.withValues(alpha: 0.20)),
        ),
      ),
      Expanded(child: Divider(color: context.colors.secondary)),
    ]);
  }

  InkWell buildContinueGoogle(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 330,
        height: 53,
        decoration: BoxDecoration(
            border: Border.all(
              color: context.colors.secondary,
            ),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.g_mobiledata), // Temporary replacement
            const SizedBox(width: 16),
            const LocaleText(
              value: "Continue with google",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            )
          ],
        ),
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
            color: context.colors.onSurface,
            border: Border.all(
              color: context.colors.primary,
            ),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LocaleText(
              value: "Register",
              style: TextStyle(
                  color: context.colors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
