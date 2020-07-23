import 'package:habitat/models/contact.dart';
import 'package:json_annotation/json_annotation.dart';

part 'landlord.g.dart';

@JsonSerializable()
class LandlordModel {
  String fullName;
  String nric;
  String mobile;
  String email;
  String company;
  String job;
  String bankName;
  String bankAccount;
  ContactModel witnessContact;

  LandlordModel();

  factory LandlordModel.fromJson(Map<String, dynamic> json) =>
      _$LandlordModelFromJson(json);
  Map<String, dynamic> toJson() => _$LandlordModelToJson(this);
}
