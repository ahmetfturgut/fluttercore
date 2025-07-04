import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends INetworkModel<LoginResponseModel> {
  final LoginDataModel? data;
  final bool? isSuccess;
  final String? timestamp;
  final int? errorCode;
  final String? message;

  const LoginResponseModel({
    this.data,
    this.isSuccess,
    this.timestamp,
    this.errorCode,
    this.message,
  });

  @override
  LoginResponseModel fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseModelToJson(this);
  }
}

@JsonSerializable()
class LoginDataModel {
  final AuthenticatedUser? authenticatedUser;
  final String? token;

  const LoginDataModel({this.authenticatedUser, this.token});

  factory LoginDataModel.fromJson(Map<String, dynamic> json) {
    return _$LoginDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LoginDataModelToJson(this);
  }
}

@JsonSerializable()
class AuthenticatedUser {
  final String? id;
  final String? email;
  final String? state;
  final String? lang;
  final String? name;
  final String? userImage;

  const AuthenticatedUser({
    this.id,
    this.email,
    this.state,
    this.lang,
    this.name,
    this.userImage,
  });

  factory AuthenticatedUser.fromJson(Map<String, dynamic> json) {
    return _$AuthenticatedUserFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthenticatedUserToJson(this);
  }
}
