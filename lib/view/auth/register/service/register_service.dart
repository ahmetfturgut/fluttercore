 import 'package:vexana/vexana.dart';

import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import '../model/register_model.dart';
import '../model/register_response_model.dart';
import 'IRegisterService.dart';

class RegisterService extends IRegisterService with ServiceHelper {
  RegisterService(super.manager, super.key);

  @override
  Future<RegisterResponseModel?> fetchRegister(RegisterModel data) async {
    final response =
        await manager.send<RegisterResponseModel, RegisterResponseModel>(
            NetworkRoutes.REGISTER.rawValue,
            parseModel: RegisterResponseModel(),
            method: RequestType.POST,
            data: data);
    if (response.data?.errorCode != null) {
      showMessage(scaffoldKey, response.data?.message);
    }
    return response.data;
  }
}
