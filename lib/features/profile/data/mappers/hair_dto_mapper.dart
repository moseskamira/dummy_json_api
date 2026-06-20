import 'package:dummy_json_api/features/profile/data/models/hair_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/hair.dart';

extension HairDtoMapper on HairDto {
  Hair toDomain() => Hair(type: type, color: color);
}
