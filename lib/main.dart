import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/presentation/main%20page/widgets/screen_mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        fontFamily: GoogleFonts.dmSans().fontFamily,
        textTheme:const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white
          ),
           bodyText2: TextStyle(
            color: Colors.white
          )
        )
      ),
      home:  ScreenMainPage(),
    );
  }
}

