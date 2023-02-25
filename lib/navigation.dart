import 'package:flutter/material.dart';

import 'homePage.dart';
import 'blankWorkoutPage.dart';
import 'addExercisePage.dart';

void navToHomePage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const HomePage()));
}

void navToBlankWorkoutPage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const BlankWorkoutPage()));
}

void navToAddExercisePage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const AddExercisePage()));
}