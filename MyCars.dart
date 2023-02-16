import 'package:flutter/material.dart';

class MyCars extends StatefulWidget {
  const MyCars({super.key});

  @override
  State<MyCars> createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {
  Widget drawerItem({
    required String name, 
    required IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('MyCars'),
      ),
      body: Column(
        children: [
           Container(
            child: Image.asset('images/car4.jpg',
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
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Schedule Service", icon: Icons.construction),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Service History", icon: Icons.car_crash),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Recent Trips", icon: Icons.location_on),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Car Notification", icon: Icons.notification_add),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Current Location", icon: Icons.location_on),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
               
         ]
          )
          )
          )
          ),
        ],
      ),
    );
  }
}