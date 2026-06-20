import 'package:json_annotation/json_annotation.dart';

import 'address_dto.dart';

part 'company_dto.g.dart';

@JsonSerializable()
class CompanyDto {
  final String department;
  final String name;
  final String title;
  final AddressDto address;

  CompanyDto({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });

  factory CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyDtoToJson(this);
}
