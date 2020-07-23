import 'package:json_annotation/json_annotation.dart';

import 'landlord.dart';
import 'tenant.dart';

part 'contract.g.dart';

@JsonSerializable()
class ContractModel {
  int duration;
  DateTime startAt;
  double rental;
  double deposit;
  double utility;
  LandlordModel landlord;
  TenantModel tenant;
  int extension;

  ContractModel();

  factory ContractModel.fromJson(Map<String, dynamic> json) =>
      _$ContractModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContractModelToJson(this);
}
