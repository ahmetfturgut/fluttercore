// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      data: json['data'] == null
          ? null
          : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      timestamp: json['timestamp'] as String?,
      errorCode: (json['errorCode'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'isSuccess': instance.isSuccess,
      'timestamp': instance.timestamp,
      'errorCode': instance.errorCode,
      'message': instance.message,
    };

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    LoginDataModel(
      authenticatedUser: json['authenticatedUser'] == null
          ? null
          : AuthenticatedUser.fromJson(
              json['authenticatedUser'] as Map<String, dynamic>,
            ),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginDataModelToJson(LoginDataModel instance) =>
    <String, dynamic>{
      'authenticatedUser': instance.authenticatedUser,
      'token': instance.token,
    };

AuthenticatedUser _$AuthenticatedUserFromJson(Map<String, dynamic> json) =>
    AuthenticatedUser(
      id: json['id'] as String?,
      email: json['email'] as String?,
      state: json['state'] as String?,
      lang: json['lang'] as String?,
      name: json['name'] as String?,
      userImage: json['userImage'] as String?,
    );

Map<String, dynamic> _$AuthenticatedUserToJson(AuthenticatedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'state': instance.state,
      'lang': instance.lang,
      'name': instance.name,
      'userImage': instance.userImage,
    };
