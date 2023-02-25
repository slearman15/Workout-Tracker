import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  WorkoutPageState createState() => WorkoutPageState();
}

class WorkoutPageState extends State<WorkoutPage> {

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
                // code for option 1
                Navigator.pop(context);
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