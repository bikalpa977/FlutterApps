import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile App",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bikalpa Profile'),
      ),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Center(
            child: Image.asset(
          "assets/images/Bikalpa.png",
          height: 300,
          width: 300,
        )),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Name: Bikalpa Gyawali',
          style: TextStyle(
              fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Address : Nagarjun-10, Kathmandu',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Email : gyawali.bikalpa@gmail.com',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
                "I am an enthusiastic Electronics and Communication Engineer who constantly seeks out innovative solutions to everyday problems. In my Bachelor\’s degree as well as 28 months of software development experiments, I\'ve honed my analytical thinking and collaboration skills, as well as working with a team. I have excellent interpersonal skills and I am able to collaborate effectively with technical and non-technical resources. I believe that by harnessing the collective skills and experience of the team we can deliver more innovative solutions and successful project outcomes. My analytical skills and my desire to learn are my greatest strengths.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ))),
        // const Text(
        //   "I am an enthusiastic Electronics and Communication Engineer who constantly seeks out innovative solutions to everyday problems. In my Bachelor\’s degree as well as 28 months of software development experiments, I\'ve honed my analytical thinking and collaboration skills, as well as working with a team. I have excellent interpersonal skills and I am able to collaborate effectively with technical and non-technical resources. I believe that by harnessing the collective skills and experience of the team we can deliver more innovative solutions and successful project outcomes. My analytical skills and my desire to learn are my greatest strengths.",
        //   textAlign: TextAlign.justify,
        //   style: TextStyle(
        //     fontSize: 12,
        //     color: Colors.black,
        //     fontStyle: FontStyle.italic,
        //   ),
        // ),
        const SizedBox(
          height: 160,
        ),
        const Text(
          'Developed By : Bikalpa Gyawali',
          style: TextStyle(
              fontSize: 12,
              color: Colors.blue,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
      ]),
    ),
  ));
}
