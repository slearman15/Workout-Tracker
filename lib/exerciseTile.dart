import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseName;

  const ExerciseTile({
    super.key,
    required this.exerciseName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right:25.0, top:25.0),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Flexible(
                child: Text(exerciseName, style: const TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ],
          ),
        ),
    );
  }
}