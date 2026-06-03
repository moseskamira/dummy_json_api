import 'package:flutter/material.dart';

import '../../../../core/utils/common_functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
