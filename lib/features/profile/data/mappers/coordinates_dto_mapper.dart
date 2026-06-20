import 'package:dummy_json_api/features/profile/data/models/coordinates_dto.dart';
import 'package:dummy_json_api/features/profile/domain/models/coordinates.dart';

extension CoordinatesDtoMapper on CoordinatesDto {
  Coordinates toDomain() => Coordinates(lat: lat, lng: lng);
}
