import 'package:dummy_json_api/features/posts/data/models/posts_response.dart';
import 'package:dummy_json_api/features/posts/domain/repositories/post_repository.dart';
import 'package:dummy_json_api/features/posts/logic/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository repository;

  PostCubit(this.repository) : super(Initial());

  Future<void> getPosts() async {
    emit(PostsLoading());
    final response = await repository.getPosts();
    if (response.success) {
      final responseData = response.data as PostsResponse;
      emit(PostsSuccess(response: responseData));
    } else {
      final message = response.error ?? 'Something wrong happened';
      emit(PostsError(message: message));
    }
  }
}
