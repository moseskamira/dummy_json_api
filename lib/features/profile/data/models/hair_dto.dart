import 'package:json_annotation/json_annotation.dart';

part 'hair_dto.g.dart';

@JsonSerializable()
class HairDto {
  final String? color;
  final String? type;

  HairDto({this.color, this.type});

  factory HairDto.fromJson(Map<String, dynamic> json) =>
      _$HairDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HairDtoToJson(this);
}
