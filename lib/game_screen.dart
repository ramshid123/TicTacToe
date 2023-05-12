import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tic_toe/score_screen.dart';


bool istap1 = false;
bool istap2 = false;
bool istap3 = false;
bool istap4 = false;
bool istap5 = false;
bool istap6 = false;
bool istap7 = false;
bool istap8 = false;
bool istap9 = false;
List available_space = [0,1,2,3,4,5,6,7,8];
var istaplist = [false,false,false,false,false,false,false,false,false];
var asset = ['','','','','','','','',''];
final _random = Random();



var circle_list = [];
var cross_list = [];

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 131, 29, 149),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 85,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(0);},child: Visibility(visible: istaplist[0],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[0],width: 45,height: 45,))))),
              Container(color: Colors.black,height:90,width: 2,),
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width:117,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(1);},child: Visibility(visible: istaplist[1],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[1],width: 45,height: 45,))))),
              Container(color: Colors.black,height:90,width: 2,),
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 85,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(2);},child: Visibility(visible: istaplist[2],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[2],width: 45,height: 45,))))),
            ],
          ),
          Container(color: Colors.black,width:300,height: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 85,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(3);},child: Visibility(visible: istaplist[3],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[3],width: 45,height: 45,))))),
              Container(color: Colors.black,height:90,width: 2,),
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 117,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(4);},child: Visibility(visible: istaplist[4],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[4],width: 45,height: 45,))))),
              Container(color: Colors.black,height:90,width: 2,),
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 85,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(5);},child: Visibility(visible: istaplist[5],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[5],width: 45,height: 45,))))),
            ],
          ),
          Container(color: Colors.black,width:300,height: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 85,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(6);},child: Visibility(visible: istaplist[6],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[6],width: 45,height: 45,))))),
              Container(color: Colors.black,height:90,width: 2,),
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 117,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(7);},child: Visibility(visible: istaplist[7],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[7],width: 45,height: 45,))))),
              Container(color: Colors.black,height:90,width: 2,),
              Padding(padding:const EdgeInsets.all(0),child: SizedBox(width: 85,height: 85,child: ElevatedButton(style: ButtonStyle(elevation:MaterialStateProperty.all(0),overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),shadowColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149)),backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 131, 29, 149))),onPressed:(){AI(8);},child: Visibility(visible: istaplist[8],replacement:const SizedBox(width: 45,height: 45,),child: Image.asset(asset[8],width: 45,height: 45,))))),
            ],
          ),
          const Expanded(child: SizedBox()),
          const Expanded(child: RBt())
        ],
      ),
    );
  }
  
  void AI(int num)async{
    //you
    setState(() {
      istaplist[num] = true;
      asset[num] = 'assets/circle.png';
    });
    available_space.remove(num);
    circle_list.add(num);
    if(circle_list.length>=3){circle_check();}

    if(available_space.isEmpty){
      await Future.delayed(const Duration(seconds: 1));
      newgame();
    }   

    //AI
    if (available_space.isNotEmpty)
   {await Future.delayed(const Duration(seconds: 1));
    var ai = available_space[_random.nextInt(available_space.length)];
    available_space.remove(ai);
    setState(() {
      istaplist[ai]=true;
      asset[ai]='assets/cross.png';
    });
    cross_list.add(ai);
    if(cross_list.length>=3){cross_check();}
  }
    if(available_space.isEmpty){await Future.delayed(const Duration(seconds: 1));newgame();}
  }



  void newgame(){
    setState(() {
      istap1 = false;
      istap2 = false;
      istap3 = false;
      istap4 = false;
      istap5 = false;
      istap6 = false;
      istap7 = false;
      istap8 = false;
      istap9 = false;
      available_space = [0,1,2,3,4,5,6,7,8];
      istaplist = [false,false,false,false,false,false,false,false,false];
      var asset = ['','','','','','','','',''];
      circle_list = [];
      cross_list = [];
      });
  }


  void circle_check(){
    final win_list = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[6,4,2],[0,4,8]];
    win_list.forEach((element)async {
      if(listContainsAll(circle_list, element)) {
        setState(() {
          animated1 = true;
        });
        await Future.delayed(const Duration(seconds: 1));
        newgame();
        scrgrp.value.you_score++;
        scrgrp.notifyListeners();
      }
    });
  }

  void cross_check(){
    final win_list = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[6,4,2],[0,4,8]];
    win_list.forEach((element)async {
      if(listContainsAll(cross_list, element)) {
        setState(() {
          animated2 = true;
        });
        await Future.delayed(const Duration(seconds: 1));
        newgame();
        scrgrp.value.me_score++;
        scrgrp.notifyListeners();
      }
    });
  }

  bool listContainsAll<T>(List<T> a, List<T> b) {
    final setA = Set.of(a);
    return setA.containsAll(b);
}
}
