import 'package:json_annotation/json_annotation.dart';

part 'contact.g.dart';

@JsonSerializable()
class ContactModel {
  String fullName;
  String nric;
  String mobile;
  String email;
  ContactRelationship relationship;

  ContactModel();

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContactModelToJson(this);
}

enum ContactRelationship {
  FATHER,
  MOTHER,
  BROTHER,
  SISTER,
  SON,
  DAUGHTER,
  COUSIN,
  FRIEND,
  EMPLOYER,
  EMPLOYEE,
  OTHER,
}
