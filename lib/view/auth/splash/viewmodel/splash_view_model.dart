import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/enums/locale_keys_enum.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';
import '../../../../product/enum/platform_project.dart';
import '../model/force_update_model.dart';
import '../service/splash_service.dart';
import 'device_and_cahe.dart';



final class SplashViewModel with Store, BaseViewModel, DeviceAndCache {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @observable
  bool isFirstInit = true;

  ISplashService? service;

  @override
  void init() {
    startAnimationOnView();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAppState();
    });

    // Dummy for moduler page
    // Future.delayed(const Duration(seconds: 1)).then((value) {
    //   navigation.navigateToPage(path: NavigationConstants.ON_BOARD);
    // });
  }

  Future<void> controlAppState() async {
    await deviceandCacheInit();
    // MARK: CONCURENCY sample
    // final data = await compute(_UserVersionCreate.createNumber, 1);
    // print(data);
    _networkInit();
    final isNeedForceUpdate = await _checkAppVersion();
    if (isNeedForceUpdate) {
      // ignore: use_build_context_synchronously
      showAboutDialog(
          context: viewModelContext, children: [const Text('Neeed to Update')]);
    } else {
      if (!localeManager.getBoolValue(PreferencesKeys.IS_FIRST_APP)) {
        await navigation.navigateToPageClear(
            path: NavigationConstants.ON_BOARD);
      } else {
        if (!localeManager.getBoolValue(PreferencesKeys.IS_FIRST_LOGIN)) {
          await navigation.navigateToPageClear(
              path: NavigationConstants.STARTPAGE);
        } else {
          await navigation.navigateToPageClear(
              path: NavigationConstants.LOGIN);
        }
      }
    }
  }

  void _networkInit() {
    if (vexanaManager != null) {
      service = SplashService(vexanaManagerComputed.networkManager);
    }
  }

  Future<bool> _checkAppVersion() async {
    final response = await service?.checkDeviceVersion(
      version: ''.version,
      platform: '${PlatformProject.IOS.versionNumber}',
    );

    if (response is ForceUpdateModel) {
      return response.data!.isForceUpdate ?? false;
    } else {
      return false;
    }
  }

  Future<void> startAnimationOnView() async {
    await Future.delayed(viewModelContext.durationLow);
    _changeFirstInit();
  }

  @action
  void _changeFirstInit() {
    isFirstInit = !isFirstInit;
  }
}

// class _UserVersionCreate {
//   static String createNumber(int number) {
//     ForceUpdateDataModel requestData =
//         ForceUpdateDataModel(currentVersion: '1.0.3');
//     final model = ForceUpdateModel(data: requestData);
//     final data = jsonEncode(model.data);
//     final lastData = jsonDecode(data);
//     if (lastData is Map<String, dynamic>) {
//       return ForceUpdateModel().data?.fromJson(lastData).currentVersion ?? '';
//     }
//     // throw
//     return '';
//   }
// }
