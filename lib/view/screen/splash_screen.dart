import 'dart:async';

import 'package:finalcontact/Constant/cachHelper.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var isFirst = CachHelper.getData(key: 'isFirst');
  @override
  void initState() {
    super.initState();
    if (isFirst == null) {
      CachHelper.saveData(key: 'isFirst', value: true);
    }
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          color: Colors.white,
          width: size.width * 0.8,
          height: size.height * 0.4,
        ),
      ),
    ));
  }
}
