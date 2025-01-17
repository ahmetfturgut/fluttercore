// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseModel _$RegisterResponseModelFromJson(
        Map<String, dynamic> json) =>
    RegisterResponseModel(
      data: json['data'] == null
          ? null
          : RegisterDataModel.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      timestamp: json['timestamp'] as String?,
      errorCode: (json['errorCode'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RegisterResponseModelToJson(
        RegisterResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'isSuccess': instance.isSuccess,
      'timestamp': instance.timestamp,
      'errorCode': instance.errorCode,
      'message': instance.message,
    };

RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) =>
    RegisterDataModel(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$RegisterDataModelToJson(RegisterDataModel instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
