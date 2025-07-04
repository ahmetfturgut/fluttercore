import 'package:flutter/material.dart';
import '../../../../core/base/view/base_widget.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../_product/widget/text/local_custom_text.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(30.0), child: AppBar()),
        key: viewModel.scaffoldKey,
        body: Padding(
          padding: context.paddingMedium,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSingInTitle(),
                context.emptySizedHeightBoxLow,
                buildSingInContent(context),
                context.emptySizedHeightBoxLow,
                context.emptySizedHeightBoxNormal,
                buildContinueGoogle(viewModel, context),
                context.emptySizedHeightBoxNormal,
                buildDivider(context),
                context.emptySizedHeightBoxNormal,
                buildEmailText(),
                context.emptySizedHeightBoxLow,
                buildEmailInput(viewModel, context),
                context.emptySizedHeightBoxLow3x,
                buildPasswordText(),
                context.emptySizedHeightBoxLow,
                buildPasswordInput(viewModel, context),
                context.emptySizedHeightBoxLow,
                buildForgotPasswordText(),
                context.emptySizedHeightBoxNormal,
                buildLoginButtom(viewModel, context),
                context.emptySizedHeightBoxLow3x,
                buildSingUpText(viewModel, context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildForgotPasswordText() {
    return Container(
      alignment: Alignment.centerRight,
      child: const LocaleText(
        value: "Forgot Password?",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
      ),
    );
  }

  LocaleText buildPasswordText() {
    return const LocaleText(
      value: "Password",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildEmailText() {
    return const LocaleText(
      value: "Email",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildSingInTitle() {
    return const LocaleText(
      value: "Welcome Back",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
    );
  }

  LocaleText buildSingInContent(BuildContext context) {
    return LocaleText(
      value: "Welcome Back Welcome Back Welcome Back Welcome Back Welcome Back",
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: context.colors.onPrimary),
    );
  }

  Row buildSingUpText(LoginViewModel viewModel, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LocaleText(
          value: "Don't have an account? ",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        InkWell(
          onTap: () => viewModel.navigateToRegister(),
          child: LocaleText(
            value: "Sign Up",
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

  TextField buildEmailInput(LoginViewModel viewModel, BuildContext context) {
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

  TextField buildPasswordInput(LoginViewModel viewModel, BuildContext context) {
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

  InkWell buildContinueGoogle(LoginViewModel viewModel, BuildContext context) {
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

  InkWell buildLoginButtom(LoginViewModel viewModel, BuildContext context) {
    return InkWell(
      onTap: () => viewModel.login(),
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
              value: "Log In",
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
