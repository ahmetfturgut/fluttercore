  import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';
import '../../../_product/_utilty/decoration_helper.dart';
import '../model/register_model.dart';
import '../service/IRegisterService.dart';
import '../service/register_service.dart';


final class RegisterViewModel with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  late DecorationHelper helper;
  IRegisterService? registerService;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @action
  Future<void> register() async {
    RegisterModel data = RegisterModel(
        name: nameController.text,
        surname: surnameController.text,
        email: emailController.text,
        password: passwordController.text);

    await registerService?.fetchRegister(data);
    // await navigation.navigateToPageClear(
    //     path: NavigationConstants.DEFAULT, data: {"{/login}"});
  }

  @override
  void init() {
    helper = DecorationHelper(context: viewModelContext);
    registerService =
        RegisterService(vexanaManager!.networkManager, scaffoldKey);
  }

  Future<void> navigateToLogin() async {
    await navigation.navigateToPageClear(path: NavigationConstants.LOGIN);
  }
}
