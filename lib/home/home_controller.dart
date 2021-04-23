import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Elizeu Junior",
      photoUrl: "https://avatars.githubusercontent.com/u/59857096?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW5Flutter",
          imagem: AppImages.blocks,
          questionAnswered: 1,
          level: Level.facil,
          questions: [
            QuestionModel(title: "Esta curtindo o Flutter", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito TOP"),
              AwnserModel(title: "Show de bola!", isRight: true),
            ]),
            QuestionModel(title: "Esta curtindo o Flutter", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Amando Flutter"),
              AwnserModel(title: "Muito TOP"),
              AwnserModel(title: "Show de bola!", isRight: true),
            ])
          ])
    ];
    state = HomeState.success;
  }
}