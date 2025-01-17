import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel extends INetworkModel<RegisterModel> {
  RegisterModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.surname});

  late final String name;
  late final String surname;
  late final String email;
  late final String password;

  @override
  RegisterModel fromJson(Map<String, Object?> json) {
    return _$RegisterModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$RegisterModelToJson(this);
  }
}
