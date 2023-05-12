
import 'package:flutter/material.dart';


class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}
    bool animated1 = false;
    bool animated2 = false;
class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrgrp,
      builder: (BuildContext ctx, Scr item, Widget?_){
        return Container(
        color: const Color.fromARGB(255, 131, 29, 149),
        height: 100,
        width: double.infinity,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 35,width: 120,color: const Color.fromARGB(255, 131, 29, 149),child: const Center(child: Text('You',style: TextStyle(fontSize: 25,),),),),
                Expanded(child: Container(height: 25,width: 120,color: const Color.fromARGB(255, 131, 29, 149),child: Center(child: AnimatedDefaultTextStyle(
                  onEnd: (){setState(() {
                    animated1 = false;
                  });},
              style : animated1 ? const TextStyle(
                color: Colors.black,
                fontSize: 75,
              ) : const TextStyle(
                color: Colors.black,
                fontSize: 55,
              ),
              duration: const Duration(milliseconds: 400
              ),
              child: Text(item.you_score.toString()),
            ),)))
              ],
            ),
            const SizedBox(width:100),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 35,width: 120,color: const Color.fromARGB(255, 131, 29, 149),child: const Center(child: Text('Me',style: TextStyle(fontSize: 25),),),),
                Expanded(child: Container(height: 25,width: 120,color: const Color.fromARGB(255, 131, 29, 149),child: Center(child: AnimatedDefaultTextStyle(
                  onEnd: (){setState(() {
                    animated2 = false;
                  });},
              style : animated2 ? const TextStyle(
                color: Colors.black,
                fontSize: 75,
              ) : const TextStyle(
                color: Colors.black,
                fontSize: 55,
              ),
              duration: const Duration(milliseconds: 500
              ),
              child: Text(item.me_score.toString()),
            ),)))
              ],
            ),
          ],
        ),
        
      );
      },
    );
  }
}



class Scr{
  int you_score;
  int me_score;

  Scr({required this.you_score,required this.me_score});
}

var s = Scr(you_score: 0, me_score: 0);

ValueNotifier<Scr> scrgrp = ValueNotifier(s);

Color clr = Colors.purple;

class RBt extends StatelessWidget {
  const RBt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){scrgrp.value.me_score=0;scrgrp.value.you_score=0;scrgrp.notifyListeners();}, icon: const Icon(Icons.clear));
  }


}