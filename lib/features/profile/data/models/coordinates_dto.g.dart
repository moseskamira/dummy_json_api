// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordinatesDto _$CoordinatesDtoFromJson(Map<String, dynamic> json) =>
    CoordinatesDto(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordinatesDtoToJson(CoordinatesDto instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
