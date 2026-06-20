import 'package:json_annotation/json_annotation.dart';

import 'address_dto.dart';
import 'bank_dto.dart';
import 'company_dto.dart';
import 'crypto_dto.dart';
import 'hair_dto.dart';

part 'user_profile_dto.g.dart';

@JsonSerializable()
class UserProfileDto {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? maidenName;
  final int? age;
  final String? gender;
  final String? email;
  final String? phone;
  final String? username;
  final String? image;
  final String? bloodGroup;
  final double? height;
  final double? weight;
  final String? eyeColor;
  final HairDto? hair;
  final String? ip;
  final AddressDto? address;
  final String? macAddress;
  final String? university;
  final BankDto? bank;
  final CompanyDto? company;
  final String? ein;
  final String? ssn;
  final String? userAgent;
  final CryptoDto? crypto;
  final String? role;

  UserProfileDto({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
    this.crypto,
    this.role,
  });

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileDtoToJson(this);
}
