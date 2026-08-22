import 'package:dummy_json_api/features/carts/logic/cart_cubit.dart';
import 'package:dummy_json_api/features/posts/logic/post_cubit.dart';
import 'package:dummy_json_api/features/products/logic/product_cubit.dart';
import 'package:dummy_json_api/features/profile/logic/profile_cubit.dart';
import 'package:dummy_json_api/features/users/logic/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/common_functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        context.read<ProfileCubit>().getProfile(),
        context.read<UserCubit>().getUsers(),
        context.read<ProductCubit>().getProducts(),
        context.read<ProductCubit>().getProduct('1'),
        context.read<CartCubit>().getCarts(),
        context.read<CartCubit>().getCart('1'),
        context.read<PostCubit>().getPosts(),
        context.read<PostCubit>().getUserPosts('1'),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'This is the home page',
            style: CommonFunctions.baseStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
