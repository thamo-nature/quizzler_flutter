import 'package:flutter/material.dart';
//import 'question.dart';

import 'quiz_brain.dart';

void main() => runApp(const QuizzApp());

final newQuestion = QuizBrain();

class QuizzApp extends StatefulWidget {
  const QuizzApp({super.key});

  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  final List<Icon> answersScore = [
    // const Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
  ];

  void checkAnswersQuestions() {
    bool checkAnswer = newQuestion.loadQuestionAnswer(questionnumber);

    setState(() {
      questionnumber++;
      if (checkAnswer == true) {
        answersScore.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        answersScore.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
    });
  }

  // final List<String> questionList = [
  //   'Some cats are actually allergic to humans',
  //   'You can lead a cow down stairs but not up stairs.'
  // ];

  // final List<bool> answers = [true, false];

  int questionnumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    //newQuestion.questionBook[questionnumber].questionText,
                    newQuestion.loadQuestionText(questionnumber),

                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(300, 70.0),
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {
                          checkAnswersQuestions();
                        },
                        child: const Text(
                          'True',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(300, 70.0),
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          checkAnswersQuestions();
                        },
                        child: const Text(
                          'False',
                          style: TextStyle(
                            color: Colors.white,
                            //backgroundColor: Colors.amber,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: answersScore,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
