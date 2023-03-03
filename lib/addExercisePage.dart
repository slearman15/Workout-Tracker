import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'database.dart';
import 'exerciseTile.dart';
import 'exerciseSearchDelegate.dart';

class AddExercisePage extends StatefulWidget {
  const AddExercisePage({super.key});

  @override
  AddExercisePageState createState() => AddExercisePageState();
}

class AddExercisePageState extends State<AddExercisePage> {

  final _exerciseBox = Hive.box("exerciseBox");
  ExerciseDatabase db = ExerciseDatabase();

  @override
  void initState() {

    if (_exerciseBox.get("EXERCISE_LIST") == null) {
      db.createInitData();
    } else {
      db.loadData();
    }
    super.initState();
  }

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
            onPressed: () {
              showSearch(context: context, delegate: ExerciseSearchDelegate(db));
            },
          )
        ],
      ),

      body: Visibility(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: db.exerciseList.length,
                itemBuilder: (context, index) {
                  return ExerciseTile(
                    exerciseName: db.exerciseList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}