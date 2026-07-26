import 'package:dummy_json_api/features/posts/data/models/reaction.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final int? id;
  final int? views;
  final int? userId;
  final String? title;
  final Reaction reactions;
  final List<String> tags;

  const Post(
    this.id,
    this.title,
    this.userId,
    this.views,
    this.reactions,
    this.tags,
  );

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
