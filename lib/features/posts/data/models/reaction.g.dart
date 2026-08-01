// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reaction _$ReactionFromJson(Map<String, dynamic> json) => Reaction(
  (json['likes'] as num?)?.toInt(),
  (json['dislikes'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReactionToJson(Reaction instance) => <String, dynamic>{
  'likes': instance.likes,
  'dislikes': instance.dislikes,
};
