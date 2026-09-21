import 'package:flutter/material.dart';

void main() {
  runApp((const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentProfilePage(),
    );
  }
}
class StudentProfilePage extends StatelessWidget{
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Student Profile.",style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
            color: Colors.brown,
          )),
          backgroundColor: Colors.indigoAccent,
        ),

        body: Center(
          child: Container(
            width: 400,
            height: 650,

            padding: EdgeInsets.all(30),

            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  width: 2.0,
                  color: Colors.brown,
                  style: BorderStyle.solid
                ),
              borderRadius: BorderRadius.circular(20),
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Row(
                      children: [
                        Icon(
                          Icons.school_rounded,
                          color: Colors.blueGrey,
                          size: 70,
                        ),
                        Text(
                          "Profile Card",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.deepOrangeAccent
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Students Name.",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),

                SizedBox(height:20),
                Text(
                  "MUWONGE JOSEPH",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.black38,
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  "Students Class.",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),

                SizedBox(height: 15),
                Text(
                  "SOFTWARE ENGINEERING 2025/2026",
                  style:TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                  ),
                ),

                SizedBox(height: 40),
                Text(
                  "Brief Description about the Student.",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "He is a well motivated Student focused on creating a "
                      "footprint in the Tech sector during his journey of Software engineering.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ],
          ),
          ),
        ),
    );
  }
}