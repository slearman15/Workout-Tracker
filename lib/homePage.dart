import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  void startWorkout() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Select an option'),
          actions: [
            CupertinoActionSheetAction(
              child: const Text('Blank Workout'),
              onPressed: () {
                Navigator.pop(context);
                navToWorkoutPage(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('Repeat Workout'),
              onPressed: () {
                // code for option 2
                Navigator.pop(context);
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
        title: const Text('Workouts'),
        backgroundColor: Colors.blue,
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
                onPressed: startWorkout,
                child: const Text('Begin Workout',
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