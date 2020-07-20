import 'package:json_annotation/json_annotation.dart';
import 'package:habitat/models/tenancy.dart';
import 'package:habitat/models/address.dart';

part 'property.g.dart';

@JsonSerializable()
class PropertyModel {
  String id;
  String name;
  String picture;
  double rental;
  PropertyType type;
  @JsonKey(defaultValue: PropertyAvailability.AVAILABLE)
  PropertyAvailability availability;
  TenancyModel tenancy;
  AddressModel address;
  String createdAt;
  String updatedAt;

  PropertyModel();

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);
  Map<String, dynamic> toJson() => _$PropertyModelToJson(this);
}

enum PropertyType { APARTMENT, BUNGALOW, CONDOMINIUM, SEMI_D }

enum PropertyAvailability {
  AVAILABLE,
  RENTING,
  UNDER_APPROVAL,
}
