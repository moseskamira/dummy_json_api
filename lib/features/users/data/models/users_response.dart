import 'package:dummy_json_api/features/profile/domain/models/user_profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse {
  final List<UserProfile>? users;
  final int? total;
  final int? skip;
  final int? limit;

  UsersResponse({this.users, this.total, this.limit, this.skip});

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}
