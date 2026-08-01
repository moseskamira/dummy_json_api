// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
  (json['id'] as num?)?.toInt(),
  json['title'] as String?,
  (json['userId'] as num?)?.toInt(),
  (json['views'] as num?)?.toInt(),
  Reaction.fromJson(json['reactions'] as Map<String, dynamic>),
  (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
  'id': instance.id,
  'views': instance.views,
  'userId': instance.userId,
  'title': instance.title,
  'reactions': instance.reactions,
  'tags': instance.tags,
};
