
import 'package:first/presentaion/roter/app_roter.dart';
import 'package:first/presentaion/screens/login_screen.dart';

import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
final AppRouter appRouter =AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
