import 'package:flutter/material.dart';

class RecentTrip extends StatefulWidget {
  const RecentTrip({super.key});

  @override
  State<RecentTrip> createState() => _RecentTripState();
}

class _RecentTripState extends State<RecentTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Recent Trips'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25,left: 20,right:20),
            child: Image.asset('images/map1.jpg',width: double.infinity,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 20,right:20),
            child: Image.asset('images/map3.jpg',width: double.infinity,),
          )
        ],
      ),
    );
  }
}