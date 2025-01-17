import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'force_update_model.g.dart';

@JsonSerializable()
class ForceUpdateModel extends INetworkModel<ForceUpdateModel> {
  ForceUpdateDataModel? data;
  bool? isSuccess;
  String? timestamp;

  ForceUpdateModel({this.data, this.isSuccess, this.timestamp});

  @override
  ForceUpdateModel fromJson(Map<String, dynamic> json) {
    return _$ForceUpdateModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$ForceUpdateModelToJson(this);
  }
}

@JsonSerializable()
class ForceUpdateDataModel extends INetworkModel<ForceUpdateDataModel> {
  bool? isForceUpdate;
  String? type;
  String? currentVersion;

  ForceUpdateDataModel({this.isForceUpdate, this.type, this.currentVersion});

  @override
  ForceUpdateDataModel fromJson(Map<String, dynamic> json) {
    return _$ForceUpdateDataModelFromJson(json);
  }

  factory ForceUpdateDataModel.fromJson(Map<String, Object> json) {
    return _$ForceUpdateDataModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$ForceUpdateDataModelToJson(this);
  }
}
