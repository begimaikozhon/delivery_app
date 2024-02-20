import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => BottomNavigationBar(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/delivery1.jpg',
              width: double.infinity,
              height: 300,
            ),
            Lottie.network(
                'https://lottie.host/64006068-c27e-417a-b436-0e7985a9d0c1/H2fnwlrqBn.json'),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
