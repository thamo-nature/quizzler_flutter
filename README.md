# quizzler_flutter
Quiz app

<h5>Children Widget as a list</h5>

<pre>
              const Row(
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                  )
                ],
              )

                List<String> answersScore = [
                    Icon(
                        Icons.check,
                        color: Colors.green,
                    ),
                    Icon(
                        Icons.close,
                        color: Colors.red,
                    )
                  ];

              const Row(
                children: answersScore,
              )
</pre>

<h5>Question list</h5>
<pre>

  final List<String> questionList = [
    'Some cats are actually allergic to humans',
    'You can lead a cow down stairs but not up stairs.'
  ];

  int questionnumber = 0;

  questionList[questionnumber],

    setState(() {
        questionnumber++;
    });
</pre>

<h5>Question class</h5>
<pre>

class Question {
  String questionText = "";
  bool questionAnswers = true;

  Question({String q = "", bool a = true}) {
    questionText = q;
    questionAnswers = a;
  }
}


  final List<Question> questionBook = [
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
  ];

Question string to display becomes

    questionBook[questionnumber].questionText,

Checking Answer becomes

    bool checkAnswer = questionBook[questionnumber].questionAnswers;

</pre>

<h5>Abstraction of Questions in QuizBrain class</h5>
<pre>

import 'question.dart';

class QuizBrain {
  final List<Question> questionBook = [
    Question('Some cats are actually allergic to humans', true),
  ];
}

usage in main dart as:

    import 'quiz_brain.dart';

    final newQuestion = QuizBrain();s

Question text becomes:

      newQuestion.questionBook[questionnumber].questionText,

Question answers becomes:

         bool checkAnswer = newQuestion
                              .questionBook[questionnumber].questionAnswers;
</pre>

<h5>OOPS in class</h5>
<pre>

  Encapsulation:
    Private variables little sign _ 

      final List<Question> _questionBook = [
        Question('Some cats are actually allergic to humans', true)
      ]; 

  inherit :

    class alien extends human{ void emotion(){ print('crying') } }

  Polymorphism: inherit similarities and override 

    class alien extends human{
      @override
      void emotion(){
        super.emotion();
        //plus additional characteristics not common in human

        print('crying with no tears');
      }
    }
</pre>