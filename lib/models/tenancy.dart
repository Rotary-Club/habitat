import 'package:json_annotation/json_annotation.dart';
import 'package:habitat/models/user.dart';

part 'tenancy.g.dart';

@JsonSerializable()
class TenancyModel {
  String id;
  String start;
  String end;
  UserModel tenant;
  String createdAt;
  String updatedAt;

  TenancyModel();

  factory TenancyModel.fromJson(Map<String, dynamic> json) =>
      _$TenancyModelFromJson(json);
  Map<String, dynamic> toJson() => _$TenancyModelToJson(this);
}
