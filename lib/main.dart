import 'package:flutter/material.dart';
import 'package:petit/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          labelLarge:
              GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.bold),
          labelMedium: GoogleFonts.leagueSpartan(fontSize: 24),
          labelSmall:
              GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w300),
          headlineMedium:
              GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      home: const SplashScreen(),
      routes: const {},
    );
  }
}
