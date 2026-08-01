import 'package:json_annotation/json_annotation.dart';

part 'posts_response.g.dart';

@JsonSerializable()
class PostsResponse {
  final List<dynamic> posts;

  PostsResponse(this.posts);

  factory PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostsResponseToJson(this);
}
