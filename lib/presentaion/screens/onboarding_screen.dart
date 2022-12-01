import 'package:flutter/material.dart';

class OnBorading extends StatefulWidget {
  const OnBorading({Key? key}) : super(key: key);

  @override
  State<OnBorading> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBorading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
backgroundColor: Colors.blue,
        actions: [

        ],
      ),
    );
  }
}
