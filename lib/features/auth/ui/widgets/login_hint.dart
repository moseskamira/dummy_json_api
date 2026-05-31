import 'package:flutter/material.dart';

class LoginHint extends StatelessWidget {
  const LoginHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, size: 18),
            SizedBox(width: 8),
            Text(
              'Demo Credentials',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text('Username: emilys', textAlign: TextAlign.center),
        Text('Password: emilyspass', textAlign: TextAlign.center),
      ],
    );
  }
}
