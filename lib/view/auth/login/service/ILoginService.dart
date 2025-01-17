// ignore: file_names
import '../model/login_request_model.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../model/login_response_model.dart';

abstract class ILoginService {
  ILoginService(this.manager, this.scaffoldKey);
  final INetworkManager manager;
  final GlobalKey<ScaffoldState> scaffoldKey;

  Future<LoginResponseModel?> fetchLogin(LoginRequestModel data);
}
