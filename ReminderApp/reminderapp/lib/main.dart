import 'dart:async';
import 'package:flutter/material.dart';

class ReminderApp extends StatefulWidget {
  const ReminderApp({Key? key}) : super(key: key);
  @override
  ReminderAppState createState() => ReminderAppState();
}

class ReminderAppState extends State<ReminderApp> {
  int codingTime = 3;
  int electronicsTime = 3;
  int gkTime = 2;
  int lawsTime = 1;
  int fitnessTime = 1;
  bool codingRunning = false;
  bool electronicsRunning = false;
  bool gkRunning = false;
  bool lawsRunning = false;
  bool fitnessRunning = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reminder App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Reminder App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Coding/Project - $codingTime hour',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () => startTimer('Coding'),
                child: const Text('Start Coding Timer'),
              ),
              Text(
                'Electronics - $electronicsTime hour',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () => startTimer('Electronics'),
                child: const Text('Start Electronics Timer'),
              ),
              Text(
                'GK - $gkTime hour',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () => startTimer('GK'),
                child: const Text('Start GK Timer'),
              ),
              Text(
                'Laws and Regulation - $lawsTime hour',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () => startTimer('Laws'),
                child: const Text('Start Laws Timer'),
              ),
              Text(
                'Fitness/Exercise - $fitnessTime hour',
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () => startTimer('Fitness'),
                child: const Text('Start Fitness Timer'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void startTimer(String timerType) {
    switch (timerType) {
      case 'Coding':
        if (!codingRunning) {
          Timer.periodic(const Duration(minutes: 1), (Timer t) {
            if (codingTime == 0) {
              t.cancel();
              showReminderDialog('Coding');
            } else {
              setState(() {
                codingTime--;
              });
            }
          });
          codingRunning = true;
        }
        break;
      case 'Electronics':
        if (!electronicsRunning) {
          Timer.periodic(const Duration(minutes: 1), (Timer t) {
            if (electronicsTime == 0) {
              t.cancel();
              showReminderDialog('Electronics');
            } else {
              setState(() {
                electronicsTime--;
              });
            }
          });
          electronicsRunning = true;
        }
        break;
      case 'GK':
        if (!gkRunning) {
          Timer.periodic(const Duration(minutes: 1), (Timer t) {
            if (gkTime == 0) {
              t.cancel();
              showReminderDialog('GK');
            } else {
              setState(() {
                gkTime--;
              });
            }
          });
          gkRunning = true;
        }
        break;
      case 'Laws':
        if (!lawsRunning) {
          Timer.periodic(const Duration(minutes: 1), (Timer t) {
            if (lawsTime == 0) {
              t.cancel();
              showReminderDialog('Laws');
            } else {
              setState(() {
                lawsTime--;
              });
            }
          });
          lawsRunning = true;
        }
        break;
      case 'Fitness':
        if (!fitnessRunning) {
          Timer.periodic(const Duration(minutes: 1), (Timer t) {
            if (fitnessTime == 0) {
              t.cancel();
              showReminderDialog('Fitness');
            } else {
              setState(() {
                fitnessTime--;
              });
            }
          });
          fitnessRunning = true;
        }
        break;
    }
  }

  void showReminderDialog(String timerType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Reminder'),
          content: Text('Your $timerType timer has finished.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

void main() => runApp(ReminderApp());
