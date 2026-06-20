import 'package:dummy_json_api/features/profile/data/mappers/address_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/mappers/bank_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/mappers/company_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/mappers/crypto_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/mappers/hair_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/models/user_profile_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/user_profile.dart';

extension UserProfileDtoMapper on UserProfileDto {
  UserProfile toDomain() => UserProfile(
    id: id,
    firstName: firstName,
    lastName: lastName,
    maidenName: maidenName,
    age: age,
    gender: gender,
    email: email,
    phone: phone,
    username: username,
    image: image,
    bloodGroup: bloodGroup,
    height: height,
    weight: weight,
    eyeColor: eyeColor,
    hair: hair?.toDomain(),
    ip: ip,
    address: address?.toDomain(),
    macAddress: macAddress,
    university: university,
    bank: bank?.toDomain(),
    company: company?.toDomain(),
    ein: ein,
    ssn: ssn,
    userAgent: userAgent,
    crypto: crypto?.toDomain(),
    role: role,
  );
}
