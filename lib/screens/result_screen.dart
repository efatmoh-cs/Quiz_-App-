import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/screens/main_menu.dart';


import '../ui/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  late String resulttext;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();

  String getText() {
    if(score>=40){

      resulttext='Excellent';
    }else if(score<=20){
      resulttext='Very Bad';
    }
    else {
      resulttext='Good';}

    return resulttext;

  }
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              widget.getText(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.orange,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "Your Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainMenu(),
                  ));
            },
            shape: const StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              "Repeat the quiz",
              style: TextStyle(color: Colors.white,fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

