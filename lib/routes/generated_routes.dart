import 'package:delivery_app/features/presentation/bloc/landing_page_bloc/bloc/landing_page_bloc.dart';
import 'package:delivery_app/features/presentation/pages/landingpage/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  final LandingPageBloc landingPageBloc = LandingPageBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LandingPageBloc>.value(
            value: landingPageBloc,
            child: const LandingPage(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error page'),
            centerTitle: true,
          ),
          body: const Center(
            child: Text(
              'ERROR',
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
              ),
            ),
          ),
        );
      },
    );
  }
}
