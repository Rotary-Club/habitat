// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) {
  return PropertyModel()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..picture = json['picture'] as String
    ..rental = (json['rental'] as num)?.toDouble()
    ..type = _$enumDecodeNullable(_$PropertyTypeEnumMap, json['type'])
    ..availability = _$enumDecodeNullable(
            _$PropertyAvailabilityEnumMap, json['availability']) ??
        PropertyAvailability.AVAILABLE
    ..tenancy = json['tenancy'] == null
        ? null
        : TenancyModel.fromJson(json['tenancy'] as Map<String, dynamic>)
    ..address = json['address'] == null
        ? null
        : AddressModel.fromJson(json['address'] as Map<String, dynamic>)
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String;
}

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture': instance.picture,
      'rental': instance.rental,
      'type': _$PropertyTypeEnumMap[instance.type],
      'availability': _$PropertyAvailabilityEnumMap[instance.availability],
      'tenancy': instance.tenancy,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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

const _$PropertyTypeEnumMap = {
  PropertyType.APARTMENT: 'APARTMENT',
  PropertyType.BUNGALOW: 'BUNGALOW',
  PropertyType.CONDOMINIUM: 'CONDOMINIUM',
  PropertyType.SEMI_D: 'SEMI_D',
};

const _$PropertyAvailabilityEnumMap = {
  PropertyAvailability.AVAILABLE: 'AVAILABLE',
  PropertyAvailability.RENTING: 'RENTING',
  PropertyAvailability.UNDER_APPROVAL: 'UNDER_APPROVAL',
};
