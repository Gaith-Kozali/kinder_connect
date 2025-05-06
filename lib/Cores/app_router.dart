import 'package:go_router/go_router.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Screens/get_started_screen.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/card_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/learning_map_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/model_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/question_screen.dart';
import '../Features/home_feature/presentation/screens/home_screen.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return GetStartedScreen();
      },
    ),
    GoRoute(
      name: QuestionScreen.routeName,
      path: "/exam",
      builder: (context, state) => QuestionScreen(),
    ),
    GoRoute(
      name: ModelScreen.routeName,
      path: "/model",
      builder:
          (context, state) =>
              ModelScreen(superClass: state.extra as SuperClass),
    ),
    GoRoute(
      name: CardScreen.routeName,
      path: "/card",
      builder: (context, state) {
        List<SuperClass> data = state.extra as List<SuperClass>;
        return CardScreen(superClasses: data);
      },
    ),
    GoRoute(
      name: LearningMapScreen.routeName,
      path: "/learningMap",
      builder:
          (context, state) =>
              LearningMapScreen(superClass: state.extra as SuperClass),
    ),
  ],
);
