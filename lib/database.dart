import 'package:hive_flutter/hive_flutter.dart';

class ExerciseDatabase {

  List exerciseList = [];
  final _exerciseBox = Hive.box("exerciseBox");

  void createInitData() {
    exerciseList = [
      "Bench Press",
      "Incline Bench Press",
      "Incline Dumbbell Press",
      "Decline Bench Press",
      "Close-Grip Bench Press",
      "Dumbbell Chest Fly",
      "Push-Up",
      "Overhead Press",
      "Dumbbell Shoulder Press",
      "Dumbbell Lateral Raise",
      "Dumbbell Rear Deltoid Row",
      "Face Pull",
      "Barbell Curl",
      "Barbell Preacher Curl",
      "Dumbbell Curl",
      "Dumbbell Preacher Curl",
      "Hammer Curl",
      "Dumbbell Lying Triceps Extension",
      "Dumbbell Standing Triceps Extension",
      "Tricep Pushdown",
      "Barbell Squat",
      "Front Squat",
      "Goblet Squat",
      "Barbell Lunge",
      "Bulgarian Split Squat",
      "Leg Extension",
      "Leg Curl",
      "Leg Press",
      "Seated Calf Raise",
      "Standing Calf Raise",
      "Romanian Deadlift",
      "Deadlift",
      "Barbell Row",
      "Barbell Shrug",
      "Dumbbell Row",
      "Dumbbell Shrug",
      "Lat Pulldown",
      "Pull-Up",
      "Cable Crunch",
      "Crunch",
      "Hanging Leg Raise",
      "Hanging Knee Raise",
      "Plank",
      "Sit-Up",
    ];
  }

  void loadData() {
    exerciseList = _exerciseBox.get("EXERCISE_LIST");
  }

  void updateDatabase() {
    _exerciseBox.put("EXERCISE_LIST", exerciseList);
  }
}