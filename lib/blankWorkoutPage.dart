import 'package:flutter/material.dart';

import 'navigation.dart';

class BlankWorkoutPage extends StatefulWidget {
  const BlankWorkoutPage({super.key});

  @override
  BlankWorkoutPageState createState() => BlankWorkoutPageState();
}

class BlankWorkoutPageState extends State<BlankWorkoutPage> {

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