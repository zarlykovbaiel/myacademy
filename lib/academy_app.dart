import 'package:flutter/material.dart';
import 'package:myacademy/route/routes.dart';
import 'package:myacademy/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: blueTheme,
      routes: routes,
    );
  }
}
