// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return ContactModel()
    ..fullName = json['fullName'] as String
    ..nric = json['nric'] as String
    ..mobile = json['mobile'] as String
    ..email = json['email'] as String
    ..relationship = _$enumDecodeNullable(
        _$ContactRelationshipEnumMap, json['relationship']);
}

Map<String, dynamic> _$ContactModelToJson(ContactModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nric': instance.nric,
      'mobile': instance.mobile,
      'email': instance.email,
      'relationship': _$ContactRelationshipEnumMap[instance.relationship],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ContactRelationshipEnumMap = {
  ContactRelationship.FATHER: 'FATHER',
  ContactRelationship.MOTHER: 'MOTHER',
  ContactRelationship.BROTHER: 'BROTHER',
  ContactRelationship.SISTER: 'SISTER',
  ContactRelationship.SON: 'SON',
  ContactRelationship.DAUGHTER: 'DAUGHTER',
  ContactRelationship.COUSIN: 'COUSIN',
  ContactRelationship.FRIEND: 'FRIEND',
  ContactRelationship.EMPLOYER: 'EMPLOYER',
  ContactRelationship.EMPLOYEE: 'EMPLOYEE',
  ContactRelationship.OTHER: 'OTHER',
};
