import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/provider/fill_in_the_blank_provider.dart';
import 'package:quiz_app/themeManager.dart';
import 'package:quiz_app/trueFalse.dart';
import 'fillInBlank.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FibProvider>(create:(context)=>FibProvider())
      ],
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        home:
        FillInBlank(),
        // TrueFalse(),
        // MultipleChoice1(),
        // MultipleChoice2(),
        // Matching1(),
        // Matching2(),
        // LearningSection(),
      ),
    );
  }
}
