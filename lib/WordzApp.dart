import 'package:flutter/material.dart';

import 'package:wordz/constants/strings.dart';
import 'package:wordz/pages/HomePage.dart';
import 'package:wordz/theme/WordzThemeData.dart';

class WordzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: WORDZ_TITLE_STRING,
      theme: wordzThemeData,
      home: HomePage(),
    );
  }
}