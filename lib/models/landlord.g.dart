// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landlord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandlordModel _$LandlordModelFromJson(Map<String, dynamic> json) {
  return LandlordModel()
    ..fullName = json['fullName'] as String
    ..nric = json['nric'] as String
    ..mobile = json['mobile'] as String
    ..email = json['email'] as String
    ..company = json['company'] as String
    ..job = json['job'] as String
    ..bankName = json['bankName'] as String
    ..bankAccount = json['bankAccount'] as String
    ..witnessContact = json['witnessContact'] == null
        ? null
        : ContactModel.fromJson(json['witnessContact'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LandlordModelToJson(LandlordModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nric': instance.nric,
      'mobile': instance.mobile,
      'email': instance.email,
      'company': instance.company,
      'job': instance.job,
      'bankName': instance.bankName,
      'bankAccount': instance.bankAccount,
      'witnessContact': instance.witnessContact,
    };
