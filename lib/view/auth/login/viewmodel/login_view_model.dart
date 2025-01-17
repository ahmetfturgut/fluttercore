import 'package:core_flutter_app/core/extension/string_extension.dart';
import 'package:core_flutter_app/view/auth/login/model/login_request_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../../core/base/model/base_view_model.dart';
 import '../../../../core/constants/navigation/navigation_constants.dart';
import '../../../../core/init/network/vexana_manager.dart';
 import '../service/ILoginService.dart';
import '../service/login_service.dart';

final class LoginViewModel with Store, BaseViewModel {
  @observable
  bool isLoading = false;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ILoginService? loginService;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    loginService = LoginService(
      VexanaManager.instance.networkManager,
      scaffoldKey,
    );
  }

  @action
  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

     final emailError = email.isValidEmail;
    if (emailError != null) {
      _showMessage(emailError);
      return;
    }

    if (password.isEmpty) {
      _showMessage('Password cannot be empty');
      return;
    }

    final data = LoginRequestModel(
      email: email,
      password: password,
    );

    final response = await loginService?.fetchLogin(data);

    if (response != null) {
      if (response.data?.token?.isEmpty ?? true) return;
      _showMessage('Login successful');
      await navigation.navigateToPageClear(path: NavigationConstants.DEFAULT);
    }
  }

  @action
  Future<void> navigateToHome() async {
    await navigation.navigateToPageClear(path: NavigationConstants.DEFAULT);
  }

  @action
  Future<void> navigateToRegister() async {
    await navigation.navigateToPage(path: NavigationConstants.SING_UP);
  }

  void _showMessage(String message) {
    if (scaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }
}
