import 'package:flutter/material.dart';
import 'package:wedevs_assignment/controller/utils/media_size.dart';

import 'controller/app_theme/app_theme.dart';
import 'view/auth/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mediaHeight = MediaQuery.of(context).size.height;
    mediaWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightMode,
      home: const LoginPage(),
    );
  }
}
