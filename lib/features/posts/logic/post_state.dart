import 'package:dummy_json_api/features/posts/data/models/posts_response.dart';
import 'package:equatable/equatable.dart';

class PostState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends PostState {}

class PostsLoading extends PostState {}

class PostsSuccess extends PostState {
  final PostsResponse? response;

  PostsSuccess({this.response});

  @override
  List<Object?> get props => [response];
}

class PostsError extends PostState {
  final String message;

  PostsError({required this.message});

  @override
  List<Object?> get props => [message];
}
