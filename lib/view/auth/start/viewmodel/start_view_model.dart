import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/enums/locale_keys_enum.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';

final class StartViewModel with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.viewModelContext = context;

  Future<void> continueGuest() async {
    await localeManager.setBoolValue(PreferencesKeys.IS_FIRST_LOGIN, true);
    await navigation.navigateToPage(path: NavigationConstants.TOPICSPAGE);
  }

  Future<void> getStarted() async {
    await localeManager.setBoolValue(PreferencesKeys.IS_FIRST_LOGIN, true);
    await navigation.navigateToPage(path: NavigationConstants.LOGIN);
  }

  @override
  void init() {}
}
