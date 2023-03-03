import 'package:flutter/material.dart';

import 'database.dart';
import 'exerciseTile.dart';

class ExerciseSearchDelegate extends SearchDelegate<String> {
  final ExerciseDatabase db;

  ExerciseSearchDelegate(this.db);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List results = db.exerciseList.where((exercise) => exercise.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final exercise = results[index];
        return ExerciseTile(
          exerciseName: exercise,
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List suggestions = db.exerciseList.where((exercise) => exercise.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final exercise = suggestions[index];
        return ListTile(
          title: Text(exercise),
          onTap: () {
            close(context, exercise);
          },
        );
      },
    );
  }
}