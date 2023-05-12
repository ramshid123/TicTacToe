import 'package:flutter/material.dart';
import 'package:tic_toe/game_screen.dart';
import 'package:tic_toe/score_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 131, 29, 149),
      appBar: AppBar(
        title: const Text('Tic Toe',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 212, 212, 212)),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 125, 25, 145),
      ),
      body: Column(
        children: const [
          SizedBox(height: 20,),
          ScoreScreen(),
           Expanded(child: GameScreen())
        ],
      )
      
    );
  }
}

