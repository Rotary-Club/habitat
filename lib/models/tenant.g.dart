// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TenantModel _$TenantModelFromJson(Map<String, dynamic> json) {
  return TenantModel()
    ..fullName = json['fullName'] as String
    ..nric = json['nric'] as String
    ..mobile = json['mobile'] as String
    ..email = json['email'] as String
    ..company = json['company'] as String
    ..job = json['job'] as String
    ..emergencyContact = json['emergencyContact'] == null
        ? null
        : ContactModel.fromJson(
            json['emergencyContact'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TenantModelToJson(TenantModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nric': instance.nric,
      'mobile': instance.mobile,
      'email': instance.email,
      'company': instance.company,
      'job': instance.job,
      'emergencyContact': instance.emergencyContact,
    };
