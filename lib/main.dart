import 'package:duck/auth_screen/auth_view.dart';
import 'package:duck/components/bottom_navbar.dart';
import 'package:duck/home_screen/home_view.dart';
import 'package:duck/splash_screen/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


  Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
        child:MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
      scaffoldBackgroundColor: Colors.white,
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:  _buildTheme(Brightness.light),
      home: const AuthView(),
    );
  }
}


