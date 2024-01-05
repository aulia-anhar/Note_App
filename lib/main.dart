import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:note_app/screens/auth_page.dart';
import 'package:note_app/screens/edi_add_notes_page.dart';
import 'package:note_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: {
        "splash_screen": (context) => const SplashScreen(),
        "/": (context) => const AuthPage(),
        "edit_add_notes_page": (context) => const EditAddNotesPage(),
      },
    ),
  );
}
