// ignore: file_names
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../model/register_model.dart';
import '../model/register_response_model.dart';

abstract class IRegisterService {
  IRegisterService(this.manager, this.scaffoldKey);
  final INetworkManager manager;
  final GlobalKey<ScaffoldState> scaffoldKey;

  Future<RegisterResponseModel?> fetchRegister(RegisterModel data);
}
