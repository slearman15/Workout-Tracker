import 'package:flutter/material.dart';

import 'blankWorkoutPage.dart';
import 'homePage.dart';


void navToHomePage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const HomePage()));
}

void navToBlankWorkoutPage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const BlankWorkoutPage()));
}