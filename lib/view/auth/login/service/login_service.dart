import '../../../_product/_utilty/service_helper.dart';
import '../../../_product/enum/network_route_enum.dart';
import '../model/login_request_model.dart';
import '../model/login_response_model.dart';
 import 'package:vexana/vexana.dart';

import 'ILoginService.dart';

class LoginService extends ILoginService with ServiceHelper {
  LoginService(super.manager, super.key);

  @override
  Future<LoginResponseModel?> fetchLogin(LoginRequestModel data) async {
    final response = await manager.send<LoginResponseModel, LoginResponseModel>(
      NetworkRoutes.LOGIN.rawValue,
      parseModel: LoginResponseModel(),
      method: RequestType.POST,
      data: data,
    );

    if (response.data?.errorCode != null) {
      showMessage(scaffoldKey, response.data?.message);
    }
    return response.data;
  }
}
