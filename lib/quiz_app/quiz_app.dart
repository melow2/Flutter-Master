import 'package:flutter/material.dart';
import 'package:quiz_flutter/quiz_app/answer.dart';
import 'package:quiz_flutter/quiz_app/question.dart'; // 겁나 많은 material widget을 사용할 수 있음.

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState.init(0);
  }
}

class QuizAppState extends State<QuizApp> {
  int count = 0;

  QuizAppState.init(this.count);

  var questions = const [
    {
      'question': '당신이 가장 좋아하는 색깔은 무엇입니까?',
      'answer': ['빨간색', '검은색', '흰색']
    },
    {
      'question': '당신이 가장 좋아하는 라면은 무엇입니까?',
      'answer': ['진라면', '신라면', '짜파게티']
    },
    {
      'question': '당신이 가장 좋아하는 가수는 누구입니까?',
      'answer': ['정준일', '윤종신', '바이']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: scaffold());
  }

  void addCounter() {
    setState(() {
      count++;
    });
  }

  Widget scaffold() {
    String question = questions[count % 3]['question'] as String;
    return Scaffold(
        appBar: AppBar(title: Text('퀴즈어플리케이션')),
        body: Column(children: [Question(question), AnswerButton(addCounter)]));
  }
}
