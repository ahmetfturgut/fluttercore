import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends INetworkModel<LoginResponseModel> {
  LoginDataModel? data;
  bool? isSuccess;
  String? timestamp;
  int? errorCode;
  String? message;

  LoginResponseModel(
      {this.data,
      this.isSuccess,
      this.timestamp,
      this.errorCode,
      this.message});

  @override
  LoginResponseModel fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$LoginResponseModelToJson(this);
  }
}

@JsonSerializable()
class LoginDataModel {
  AuthendicatedUser? authendicatedUser;
  String? token;

  LoginDataModel({this.authendicatedUser, this.token});

  factory LoginDataModel.fromJson(Map<String, dynamic> json) {
    return _$LoginDataModelFromJson(json);
  }

  Map<String, dynamic>? toJson() {
    return _$LoginDataModelToJson(this);
  }
}

@JsonSerializable()
class AuthendicatedUser {
  String? id;
  String? email;
  String? state;
  String? lang;
  String? name;
  String? userImage;

  AuthendicatedUser(
      {this.id, this.email, this.state, this.lang, this.name, this.userImage});

  factory AuthendicatedUser.fromJson(Map<String, dynamic> json) {
    return _$AuthendicatedUserFromJson(json);
  }

  Map<String, dynamic>? toJson() {
    return _$AuthendicatedUserToJson(this);
  }
}
