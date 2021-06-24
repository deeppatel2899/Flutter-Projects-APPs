import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resultHandler;
  Result(this.finalScore, this.resultHandler);

  String get resultText {
    String resultGot;
    if (finalScore <= 8) {
      resultGot = "Ahh ! Somehow Passed !";
    } else if (finalScore <= 15) {
      resultGot = "WOW ! Fantastic Job Sir";
    } else {
      resultGot = "You are a CHAMP !";
    }
    return resultGot;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultText,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: resultHandler,
          child: Text(
            "Restart Quiz",
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              foregroundColor: MaterialStateProperty.all(Colors.black)),
        )
      ],
    ));
  }
}
