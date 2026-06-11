import 'package:dummy_json_api/features/profile/data/models/user_profile.dart';
import 'package:equatable/equatable.dart';

class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

class Initial extends ProfileState {
  const Initial();
}

class LoadingState extends ProfileState {
  const LoadingState();
}

class SuccessState extends ProfileState {
  final UserProfile profile;

  const SuccessState({required this.profile});

  @override
  List<Object?> get props => [profile];
}

class ErrorState extends ProfileState {
  final String message;

  const ErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
