import "package:flutter/material.dart";
import "package:snack/presentation/detail_screen.dart";
import "package:snack/presentation/home_screen.dart";
import "package:snack/presentation/splash_screen.dart";

void main() {
  runApp(const SnackishApp());
}

class SnackishApp extends StatelessWidget {
  const SnackishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/home": (context) => Homescreen(),
        "/details": (context) => DetailScreen(),
      },
    );
  }
}
