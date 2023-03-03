import 'package:flutter/material.dart';

import 'navigation.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  WorkoutPageState createState() => WorkoutPageState();
}

class WorkoutPageState extends State<WorkoutPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('New Workout'),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => navToAddExercisePage(context),
          )
        ],
      ),
    );
  }
}