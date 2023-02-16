import 'package:flutter/material.dart';

class DrivingDetails extends StatefulWidget {
  const DrivingDetails({super.key});

  @override
  State<DrivingDetails> createState() => _DrivingDetailsState();
}

class _DrivingDetailsState extends State<DrivingDetails> {
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
        title: Text('Driving Details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left:150,right: 100),
            child: TextButton(
              onPressed: (){}, 
               style: TextButton.styleFrom(
                        backgroundColor:Colors.black,
                        // minimumSize: Size.fromHeight(0),
                        shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.all(Radius.circular(20.0))),
                      ),
              child: Text('Newbie',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 20),
            child: Text("You've completed 12 achievement out of 12!",
            style: TextStyle(
                  fontSize: 18,
                  ),
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
              drawerItem(name: "Total Trip: 391", 
              icon: Icons.location_on),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Total Distance: 6060Kms", 
              icon: Icons.car_crash),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Average Speed: 19Kmph", 
              icon: Icons.speed),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ),
              drawerItem(name: "Hard Acceleration: 287", 
              icon: Icons.car_repair_sharp),
               Divider(
                  thickness: 2,
                  color: Colors.black45,
                ), 
              drawerItem(name: "Sharp: 15", 
              icon: Icons.turn_right),
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