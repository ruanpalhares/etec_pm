import 'package:flutter/material.dart';
import 'package:quiz/data/question_repository.dart';
import 'package:quiz/domain/question.dart';
import 'package:quiz/presentation/widgets/question_option_widget.dart';
import 'package:quiz/presentation/widgets/question_text_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late bool _visible;
  late List<Question> _questions;
  late Question _question;
  late int _position;
  late int _correctAnswear;

  @override
  void initState() {
    super.initState();

    _visible = true;
    _questions = loadQuestions();
    _position = 0;
    _question = _questions[_position];
    _correctAnswear = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question"),
        ),
        body: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              Expanded(
                  flex: 1, 
                  child: QuestionTextWidget(text: _question.text),),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: _question.answears().map((e) => QuestionOptionWidget(text: e.text, action: onAnsweared)).toList(),
                  ),
                ),
              ),
            ],
          ),
        )
        );
  }

  void onAnsweared(String answear) {
    var message = _question.isCorrect(answear) ? 'Acertou mizeravi!' : 'Errrrrrrou';
    var snackbar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);

    setState(() {
      if(_question.isCorrect(answear)){
        _correctAnswear++;
      }
    });
    
    setState(() {
      _visible = false;  
    });

    Future.delayed(const Duration(milliseconds: 1000), (){
      
      setState(() {
        _position++;

        if (_position>=_questions.length){
          Navigator.pushNamed(context, '/finish', arguments: 'Você acertou $_correctAnswear de ${_questions.length}!');
          return;
        }
        _question = _questions[_position];

        _visible = true;
      });
    });
  }
}
