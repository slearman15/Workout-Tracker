import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  WorkoutPageState createState() => WorkoutPageState();
}

class WorkoutPageState extends State<WorkoutPage> {

  void workoutOptions() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Select an option'),
          actions: [
            CupertinoActionSheetAction(
              child: const Text('Finish Workout'),
              onPressed: () {
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('Discard Workout'),
              onPressed: () {
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
      },
    );
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
        title: const Text('New Workout'),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => navToAddExercisePage(context),
          )
        ],
      ),

      bottomNavigationBar:BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 15),
        items: [
          BottomNavigationBarItem(
            icon: Container(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Center(
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: workoutOptions,
                child: const Text('Workout Options',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: '',
          ),
        ],
      ),
    );
  }
}