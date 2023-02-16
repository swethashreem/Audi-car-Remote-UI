import 'package:flutter/material.dart';
import 'package:flutter_audi/Categorie/DrivingDetails.dart';
import 'package:flutter_audi/Categorie/Location.dart';
import 'package:flutter_audi/Categorie/MyCars.dart';
import 'package:flutter_audi/Categorie/Profile.dart';
import 'package:flutter_audi/Categorie/RecentTrip.dart';
import 'package:flutter_audi/Categorie/Update.dart';
import 'package:flutter_audi/Login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('AUDI'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('images/audi.png',
            width: double.infinity,
            ),
          ),
          SingleChildScrollView(
        child: Container(
           child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Row(
                children: [
                  Icon(Icons.person),
                  TextButton(
                    onPressed: (){
                       Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Profile()));
                    }, 
                    child:Text('Profile Detail',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                ],
              ),

                Row(
                  children: [
                    Icon(Icons.directions_car),
                    TextButton(
                      onPressed: (){
                         Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MyCars()));
                      }, 
                      child: Text('MyCars',
                       style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                  ],
                ),

                Row(
                  children: [
                     Icon(Icons.drive_file_move),
                    TextButton(
                      onPressed: (){
                         Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RecentTrip()));
                      }, 
                      child: Text('Recent Trips',
                       style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.details),
                    TextButton(
                      onPressed: (){
                         Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const DrivingDetails()));
                      }, 
                      child: Text('Driving Details',
                       style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                  ],
                ),

                Row(
                  children: [
                     Icon(Icons.location_on),
                    TextButton(
                      onPressed: (){
                         Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Location()));
                      }, 
                      child: Text('Location Tracking',
                       style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.update),
                    TextButton(
                      onPressed: (){
                         Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Update()));}, 
                      child: Text('Update',
                       style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.logout),
                    TextButton(
                      onPressed: (){
                         Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Login()));
                      }, 
                      child: Text('Logout',
                       style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                    ),)),
                  ],
                ),
              ],
            )),
          ),
        ),
          
        ],
      ),
    );
  }
}