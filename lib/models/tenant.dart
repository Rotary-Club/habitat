import 'package:habitat/models/contact.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tenant.g.dart';

@JsonSerializable()
class TenantModel {
  String fullName;
  String nric;
  String mobile;
  String email;
  String company;
  String job;
  ContactModel emergencyContact;

  TenantModel();

  factory TenantModel.fromJson(Map<String, dynamic> json) =>
      _$TenantModelFromJson(json);
  Map<String, dynamic> toJson() => _$TenantModelToJson(this);
}
