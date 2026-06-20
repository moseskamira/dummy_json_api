// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) => CompanyDto(
  department: json['department'] as String,
  name: json['name'] as String,
  title: json['title'] as String,
  address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CompanyDtoToJson(CompanyDto instance) =>
    <String, dynamic>{
      'department': instance.department,
      'name': instance.name,
      'title': instance.title,
      'address': instance.address,
    };
