
import 'package:duck/components/bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BottomNavbar())),
        });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final sizeWidth = (height - width / 2.5) / 2;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: sizeWidth),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: width / 2.5,
              height: width / 2.5,
            ),
          ),
          SizedBox(height: sizeWidth / 1.5),
          Text(
            'Duck',
            style: TextStyle(
                color: GlobalColor.mainColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Text(
            'Cheems ready to connect with duck',
            style: TextStyle(
                color: GlobalColor.blackNormal,
                fontWeight: FontWeight.w200,
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}
