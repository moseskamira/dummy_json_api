import 'package:json_annotation/json_annotation.dart';

part 'dimension.g.dart';

@JsonSerializable()
class Dimension {
  final double? width;
  final double? height;
  final double? depth;

  Dimension({this.width, this.height, this.depth});

  factory Dimension.fromJson(Map<String, dynamic> json) =>
      _$DimensionFromJson(json);

  Map<String, dynamic> toJson() => _$DimensionToJson(this);
}
