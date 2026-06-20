import 'package:json_annotation/json_annotation.dart';

part 'coordinates_dto.g.dart';

@JsonSerializable()
class CoordinatesDto {
  final double lat;
  final double lng;

  CoordinatesDto({required this.lat, required this.lng});

  factory CoordinatesDto.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesDtoToJson(this);
}
