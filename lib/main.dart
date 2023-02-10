import 'package:exam_10_2/dataEnterScreen.dart';
import 'package:exam_10_2/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        'home': (context) => HomeScreen(),
        'entry': (context) => DataEntryScreen(),
    },
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, 'home');
    });


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset("assets/images/rnw.png", height: 75,),
        ),
      ),
    );
  }
}
