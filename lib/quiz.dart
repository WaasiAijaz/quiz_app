//quiz
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
   List<String> selectedAnswers = [];
  
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      selectedAnswers == [];
      setState(() {
        activeScreen = ResultsScreen(chosenAnswers: selectedAnswers);
      });
    }
  }


  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectedAnswer: chooseAnswer);
    });
  }
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return activeScreen!;
  }
}