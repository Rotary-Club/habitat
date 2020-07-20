// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenancyModel _$TenancyModelFromJson(Map<String, dynamic> json) {
  return TenancyModel()
    ..id = json['id'] as String
    ..start = json['start'] as String
    ..end = json['end'] as String
    ..tenant = json['tenant'] == null
        ? null
        : UserModel.fromJson(json['tenant'] as Map<String, dynamic>)
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String;
}

Map<String, dynamic> _$TenancyModelToJson(TenancyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start,
      'end': instance.end,
      'tenant': instance.tenant,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
