import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("LMS",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.indigo
        ),
        )
        ),

        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to our LMS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(245, 59, 7, 1),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon((Icons.people)),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon((Icons.lock)),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 30,
                child: ElevatedButton(
                  onPressed: (){
                    print("Login button clicked.");

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ),
                    );
                  },
                  child: const Text("LOGIN"),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Forgot password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(3, 83, 123, 1),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
