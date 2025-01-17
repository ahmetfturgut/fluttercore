import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'register_response_model.g.dart';

@JsonSerializable()
class RegisterResponseModel extends INetworkModel<RegisterResponseModel> {
  RegisterDataModel? data;
  bool? isSuccess;
  String? timestamp;
  int? errorCode;
  String? message;

  RegisterResponseModel(
      {this.data,
      this.isSuccess,
      this.timestamp,
      this.errorCode,
      this.message});

  @override
  RegisterResponseModel fromJson(Map<String, dynamic> json) {
    return _$RegisterResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$RegisterResponseModelToJson(this);
  }
}

@JsonSerializable()
class RegisterDataModel {
  String? token;

  RegisterDataModel({this.token});

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) {
    return _$RegisterDataModelFromJson(json);
  }

  Map<String, dynamic>? toJson() {
    return _$RegisterDataModelToJson(this);
  }
}
