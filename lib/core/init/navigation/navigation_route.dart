import 'package:core_flutter_app/view/auth/login/view/login_view.dart';
import 'package:core_flutter_app/view/auth/register/view/register_view.dart';
import 'package:core_flutter_app/view/home/home.dart';
import 'package:flutter/material.dart';

import '../../../product/widget/not_found/not_found.dart';
import '../../../view/auth/onboard/view/on_board_view.dart';
import '../../../view/auth/splash/view/splash_view.dart';
import '../../../view/auth/start/view/start_view.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  NavigationRoute._init();

  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(const SplashView(), NavigationConstants.DEFAULT);

      case NavigationConstants.ON_BOARD:
        return normalNavigate(
            const OnBoardView(), NavigationConstants.ON_BOARD);

      case NavigationConstants.STARTPAGE:
        return normalNavigate(const StartView(), NavigationConstants.STARTPAGE);

      case NavigationConstants.LOGIN:
        return normalNavigate(const LoginView(), NavigationConstants.LOGIN);

      case NavigationConstants.SING_UP:
        return normalNavigate(const RegisterView(), NavigationConstants.SING_UP);

      case NavigationConstants.HOME:
        return normalNavigate(const HomeView(), NavigationConstants.HOME);

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      //analytciste görülecek olan sayfa ismi için pageName veriyoruz
      settings: RouteSettings(name: pageName),
    );
  }
}
