
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/features/home/data/models/user_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widgets/disply_information_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kDetailsView = '/detailsView';
  
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          final User user = state.extra as User;
          return  DisplayInformationView(user: user,);
        },
      ),
      
    ],
  );
}
