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

      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Text(
          "You have not logged any exercises yet. Please add a new exercise by clicking the Add-icon in the top right.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}