// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractModel _$ContractModelFromJson(Map<String, dynamic> json) {
  return ContractModel()
    ..duration = json['duration'] as int
    ..startAt = json['startAt'] == null
        ? null
        : DateTime.parse(json['startAt'] as String)
    ..rental = (json['rental'] as num)?.toDouble()
    ..deposit = (json['deposit'] as num)?.toDouble()
    ..utility = (json['utility'] as num)?.toDouble()
    ..landlord = json['landlord'] == null
        ? null
        : LandlordModel.fromJson(json['landlord'] as Map<String, dynamic>)
    ..tenant = json['tenant'] == null
        ? null
        : TenantModel.fromJson(json['tenant'] as Map<String, dynamic>)
    ..extension = json['extension'] as int;
}

Map<String, dynamic> _$ContractModelToJson(ContractModel instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'startAt': instance.startAt?.toIso8601String(),
      'rental': instance.rental,
      'deposit': instance.deposit,
      'utility': instance.utility,
      'landlord': instance.landlord,
      'tenant': instance.tenant,
      'extension': instance.extension,
    };
