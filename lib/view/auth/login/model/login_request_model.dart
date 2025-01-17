import 'package:json_annotation/json_annotation.dart';

part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel {
  LoginRequestModel({required this.email, this.password, this.name});

  late final String email;
  late final String? name;
  late final String? password;

  @override
  LoginRequestModel fromJson(Map<String, Object?> json) {
    return _$LoginRequestModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$LoginRequestModelToJson(this);
  }
}
