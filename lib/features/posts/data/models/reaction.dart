import 'package:json_annotation/json_annotation.dart';

part 'reaction.g.dart';

@JsonSerializable()
class Reaction {
  final int? likes;
  final int? dislikes;

  const Reaction(this.likes, this.dislikes);

  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);

  Map<String, dynamic> toJson() => _$ReactionToJson(this);
}
