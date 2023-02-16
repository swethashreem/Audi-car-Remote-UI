import 'package:flutter/material.dart';
import 'package:flutter_audi/HomeScreen.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('MyAudi'),
        ),
       
        body:Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                child: Image.asset('images/car3.jpg',fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100,right: 100,left: 130),
              child: Text('WELCOME',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white),)),
            Scaffold(
              backgroundColor: Colors.transparent,
              body:Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 160),
                     child: TextFormField(
                      decoration: InputDecoration(
                            labelText: "Country",
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                                Icons.person_outline,color: Colors.white,
                              ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white,width: 0.4),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white,width: 0.9)
                            )
                          ),
              ),
                   ),
                 ],
               ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230),
              child: TextFormField(
                decoration: InputDecoration(
                      labelText: "Mobile",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                          Icons.person_outline,color: Colors.white,
                        ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 0.4),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 0.9)
                      )
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290),
              child: TextFormField(
                decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                          Icons.person_outline,color: Colors.white,
                        ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 0.4),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 0.9)
                      )
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                }, 
                    style: TextButton.styleFrom(
                      backgroundColor:Colors.white,
                      minimumSize: Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(10.0))),
                    ),

                child: Text('Continue',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
                ),)),
            ),
            Padding(
              padding: EdgeInsets.only(top:500,left: 50 ),
              child: Text('Need help? Call us:08061521150 or Email:connect@audiindia.in',
              style: TextStyle(fontSize: 20,color: Colors.white),),),

              Padding(padding: EdgeInsets.only(top: 580,left: 30),
              child: Text('By Clicking Continue you Agree to our Privacy Policy and Terms Of Service',
              style: TextStyle(fontSize:15,color: Colors.white ),),
            )
          ],
        )
        ),
    );
  }
}
