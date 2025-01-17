// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForceUpdateModel _$ForceUpdateModelFromJson(Map<String, dynamic> json) =>
    ForceUpdateModel(
      data: json['data'] == null
          ? null
          : ForceUpdateDataModel.fromJson(
              (json['data'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      isSuccess: json['isSuccess'] as bool?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$ForceUpdateModelToJson(ForceUpdateModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'isSuccess': instance.isSuccess,
      'timestamp': instance.timestamp,
    };

ForceUpdateDataModel _$ForceUpdateDataModelFromJson(
        Map<String, dynamic> json) =>
    ForceUpdateDataModel(
      isForceUpdate: json['isForceUpdate'] as bool?,
      type: json['type'] as String?,
      currentVersion: json['currentVersion'] as String?,
    );

Map<String, dynamic> _$ForceUpdateDataModelToJson(
        ForceUpdateDataModel instance) =>
    <String, dynamic>{
      'isForceUpdate': instance.isForceUpdate,
      'type': instance.type,
      'currentVersion': instance.currentVersion,
    };
