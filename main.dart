import 'dart:async';
import 'package:flutter/material.dart';

import 'Login.dart';

void main(){
  runApp(const  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState(){
    super.initState();
   final timer = Timer(const Duration(seconds: 5), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Container(
            height: 150,
            child: Image.asset('images/audi.png',fit: BoxFit.cover,)
            ),
          ),
      
    );
  }
}