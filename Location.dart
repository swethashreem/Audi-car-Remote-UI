import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Location Tracking'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 50),
            child: Text('LOCATION TRACKING',
            style:TextStyle(
              fontSize: 25
            ) ,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:100 ),
            child: Image.asset('images/map4.jpg'),
          )
        ],
      ),
    );
  }
}