import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/home_screen.dart';
import './screens/login_screen.dart';
import './screens/register_screen.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF000000),
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}
