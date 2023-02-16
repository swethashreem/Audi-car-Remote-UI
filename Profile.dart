import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Profile Detail'),
      ),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 20,left: 20),
           child: Row(
             children: [
               Text('Car Registration NO:',
               style: TextStyle(
                fontSize: 20
               ),),
               Text(' TN11XX1234',
                style: TextStyle(
                fontSize: 20)),
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 30,left: 20),
           child: Row(
             children: [
               Text('Booking Person Name:',
                style: TextStyle(
                  fontSize: 20)),
               Text(' Z.XXXXXXXX',
                style: TextStyle(
                  fontSize: 20)),

             ],
           ),
         ),


        ],
      ),
    );
  }
}