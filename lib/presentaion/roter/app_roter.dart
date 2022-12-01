import 'package:first/presentaion/screens/login_screen.dart';
import 'package:first/presentaion/screens/my_app.dart';
import 'package:first/constants/screens.dart'as  screen;
import 'package:first/presentaion/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
class AppRouter{
  late Widget startScreen;
  Route? onGenerateRoute(RouteSettings settings){
    startScreen =  OnBorading();

  switch(settings.name){
    case"/":
      return MaterialPageRoute(builder: (_) => startScreen);
      case screen.HomeScreen :
        final String email =settings.arguments as String;
      return MaterialPageRoute(builder: (_)=>MyHomePage(email: email,));
    case screen.LoginScreen :
      return MaterialPageRoute(builder: (context) =>Login());
    default:
      return null;
  }

  }
}