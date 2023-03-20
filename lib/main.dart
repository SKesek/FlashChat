import 'package:flash_chart/screens/chat_screen.dart';
import 'package:flash_chart/screens/login_screen.dart';
import 'package:flash_chart/screens/registration_screen.dart';
import 'package:flash_chart/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashChart());
}

class FlashChart extends StatelessWidget {
  const FlashChart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.black54),
      )),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
