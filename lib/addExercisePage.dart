import 'package:flutter/material.dart';

class AddExercisePage extends StatefulWidget {
  const AddExercisePage({super.key});

  @override
  AddExercisePageState createState() => AddExercisePageState();
}

class AddExercisePageState extends State<AddExercisePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Add an Exercise'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}