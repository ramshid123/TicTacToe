import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tic_toe/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 131, 29, 149),
      body: Center(
        child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 50.0,
      color: Colors.white
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Let\'s Play..',textAlign: TextAlign.center,textStyle: const TextStyle(fontSize: 30),speed: const Duration(milliseconds: 100)),
        ScaleAnimatedText('Tic Tac\nToe',textAlign: TextAlign.center,textStyle: const TextStyle(fontWeight: FontWeight.bold))
      ],
      totalRepeatCount: 1,
      repeatForever: false,
      pause: const Duration(seconds: 0),
      onFinished:(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){return const HomeScreen();}));
      }
    ),
  )
      ),
    );
  }
}

