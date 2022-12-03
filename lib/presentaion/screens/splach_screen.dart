import 'dart:async';
import 'package:first/presentaion/widgets/default_text.dart';
import 'package:flutter/material.dart';
import '../../constants/my_cache_key.dart';
import '../../constants/screens.dart';
import '../../data/local/my_cache.dart';
import 'onboarding_screen.dart';
import 'package:first/constants/screens.dart'as  screens;


class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 6000), () {
Navigator.pushNamedAndRemoveUntil(context,
    MyCache.getBoolean(key: MyCacheKeys.isOnBoradingViewed)
        ?screens.LoginScreen
        : screens.onBoradingScreen, (route) => false);
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/giphy.gif",
              ),
            ),
DefaultText(text: "Welcome",fontSize: 31,fontWeight: FontWeight.bold,
fontStyle: FontStyle.italic,
  color: Colors.white,
),

          ],
        ),
      ),
    );
  }
}
