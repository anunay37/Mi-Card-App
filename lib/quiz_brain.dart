import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;


  List<Question> _questionBank = [
    Question(q:'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q:'Approximately one quarter of human bones are in the feet', a:true),
    Question(q:'Taj Mahal is in Agra', a: true),
    Question(q: 'Sun Wen designed the FIFA Women\'s World Cup', a: false),
    Question(q: 'Jose Mourinho is the current manager of Manchester United', a: false),
    Question(q: 'The headquarters of FIFA is situated at Zurich', a: true),
    Question(q: 'Vikram Seth wrote the book A Suitable Boy', a: true),
  ];

  void nextQuestion() {
    if(_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}