import 'package:core_flutter_app/core/extension/string_extension.dart';
import 'package:core_flutter_app/view/auth/login/model/login_request_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';
import '../../../../core/init/network/vexana_manager.dart';
import '../service/ILoginService.dart';
import '../service/login_service.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

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
  void _setLoading(bool value) {
    isLoading = value;
  }

  @action
  void _setError(String? error) {
    errorMessage = error;
  }

  @action
  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    // Clear previous errors
    _setError(null);

    // Validation
    if (email.isEmpty || !email.contains('@')) {
      _setError('Please enter a valid email address');
      return;
    }

    if (password.isEmpty || password.length < 6) {
      _setError('Password must be at least 6 characters');
      return;
    }

    try {
      _setLoading(true);

      final data = LoginRequestModel(
        email: email,
        password: password,
      );

      final response = await loginService?.fetchLogin(data);

      if (response?.data?.token?.isNotEmpty == true) {
        // Save token to secure storage here
        _showMessage('Login successful');
        await navigation.navigateToPageClear(path: NavigationConstants.DEFAULT);
      } else {
        _setError(response?.message ?? 'Login failed. Please try again.');
      }
    } catch (e) {
      _setError('Network error. Please check your connection.');
    } finally {
      _setLoading(false);
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

  void disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
  }
}
