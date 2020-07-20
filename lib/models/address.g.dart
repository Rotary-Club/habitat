// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return AddressModel()
    ..street = json['street'] as String
    ..zipcode = json['zipcode'] as String
    ..state = json['state'] as String
    ..country = json['country'] as String
    ..latitute = (json['latitute'] as num)?.toDouble()
    ..longitude = (json['longitude'] as num)?.toDouble();
}

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'zipcode': instance.zipcode,
      'state': instance.state,
      'country': instance.country,
      'latitute': instance.latitute,
      'longitude': instance.longitude,
    };
