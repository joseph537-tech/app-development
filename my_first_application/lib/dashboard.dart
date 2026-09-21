import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learner Management System Dashboard'),
      ),

      body: const Center(
        child: Text(
            "Welcome to LMS Dashboard",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.brown
                )
        ),
      ),
    );
  }
}
