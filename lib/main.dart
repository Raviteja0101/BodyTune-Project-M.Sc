import 'package:body_tune/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(BodyTune());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class BodyTune extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BodyTuneState();
  }
}

class BodyTuneState extends State<BodyTune> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF769976),
        accentColor: Color(0xFFB37166),
        hintColor: Color(0xFF4D4B4C),
        errorColor: Color(0xFFB37166),
        fontFamily: 'Arial',
        buttonColor: Color(0xFFB37166),
        textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 18.0,
              color: Color(0xFFB37166),
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB37166),
            ),
            bodyText1: TextStyle(
              fontSize: 16.0,
              color: Color(0xFF4D4B4C),
            ),
            bodyText2: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF4D4B4C),
              fontWeight: FontWeight.bold,
            )),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
