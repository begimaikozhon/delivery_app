import 'package:delivery_app/features/presentation/pages/splashscreen/splash_screen.dart';
import 'package:delivery_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:delivery_app/routes/generated_routes.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator().generateRoute,
      home: const SplashScreen(),
    );
  }
}
