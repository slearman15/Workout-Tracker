import 'package:flutter/material.dart';

import 'homePage.dart';
import 'workoutPage.dart';
import 'addExercisePage.dart';

void navToHomePage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const HomePage()));
}

void navToWorkoutPage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const WorkoutPage()));
}

void navToAddExercisePage (BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const AddExercisePage()));
}