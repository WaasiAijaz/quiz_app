import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestionsScreenState();
  }
}
class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
 Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('The question...', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'Question1', onTap: () {}),
          AnswerButton(answerText: 'Question2', onTap: () {}),    
          AnswerButton(answerText: 'Question3', onTap: () {}),
          AnswerButton(answerText: 'Question4', onTap: () {})
        ],
      ),
    );
    }
  }
