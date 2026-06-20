import 'package:dummy_json_api/features/profile/data/mappers/address_dto_mapper.dart';
import 'package:dummy_json_api/features/profile/data/models/company_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/company.dart';

extension CompanyDtoMapper on CompanyDto {
  Company toDomain() => Company(
    department: department,
    name: name,
    title: title,
    address: address.toDomain(),
  );
}
