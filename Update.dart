import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Update'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Center(
              child: Text('Update your software',
              style: TextStyle(
                fontSize: 30
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Row(
              children: [
                 TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                          backgroundColor:Colors.black,
                          // minimumSize: Size.fromHeight(0),
                          shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.all(Radius.circular(20.0))),
                        ), 
                      child: Text('Yes',
                      style: TextStyle(fontSize: 20,color: Colors.white),)),
                  
                
                  TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                          backgroundColor:Colors.black,
                          // minimumSize: Size.fromHeight(0),
                          shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.all(Radius.circular(20.0))),
                        ), 
                    child: Text('No',
                    style: TextStyle(fontSize:20,color: Colors.white),)),
                  
              ],
            ),
          )
        ],
      ),
      
    );
  }
}