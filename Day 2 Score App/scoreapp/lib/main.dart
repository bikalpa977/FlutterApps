import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: const Icon(
          Icons.restore_outlined,
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
          child: Text(
            "Score is",
            style: TextStyle(
                color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
                color: Colors.green, fontSize: 90, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: increaseNumber,
              child: const Text("Increase"),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: decreaseNumber,
              child: const Text("Decrease"),
            ),
          ],
        ),
      ]),
    );
  }
}
