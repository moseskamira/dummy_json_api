import 'package:dummy_json_api/features/profile/domain/models/user_profile.dart';
import 'package:equatable/equatable.dart';

class UserState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends UserState {}

class UsersLoading extends UserState {}

class UserInfoLoading extends UserState {}

class UsersSuccess extends UserState {
  final List<UserProfile> users;

  UsersSuccess({required this.users});

  @override
  List<Object?> get props => [users];
}

class UserInfoSuccess extends UserState {
  final dynamic user;

  UserInfoSuccess({this.user});

  @override
  List<Object?> get props => [user];
}

class UsersError extends UserState {
  final String message;

  UsersError({required this.message});

  @override
  List<Object?> get props => [message];
}

class UserInfoError extends UserState {
  final String message;

  UserInfoError({required this.message});

  @override
  List<Object?> get props => [message];
}
