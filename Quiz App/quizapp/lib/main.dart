import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuizApp(),
    ));

class Question {
  String question;
  bool answer;

  Question(this.question, this.answer);
}

// ignore: use_key_in_widget_constructors
class QuizApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  final List<Question> _questions = [
    Question("Does Mount Everest Lie in Nepal?", true),
    Question("Was Gautam Buddha Born in Nepal?", true),
    Question("Is Nepal beautiful?", true),
  ];

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      _score++;
    }

    setState(() {
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestionIndex >= _questions.length) {
      return Center(
        child: Text("You got $_score out of ${_questions.length} correct!"),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_questions[_currentQuestionIndex].question),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("True"),
              onPressed: () => _answerQuestion(true),
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              child: const Text("False"),
              onPressed: () => _answerQuestion(false),
            ),
          ],
        ),
      ],
    );
  }
}
