import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/screens/home_screen.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Delivery UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: Builder(
              builder:(context) => Scaffold(
          body: Container(
     
               width: double.infinity,
                height: 700,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.deepOrangeAccent],
                    begin: Alignment(0.0, 1.50),
                    end: Alignment(0.0, 0.25),
                    )
                ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text('Skip The Plates',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 35.0,
                    color: Colors.greenAccent[700],
                    fontWeight: FontWeight.w400
                    ),
                  ),
                ),

        SizedBox(  
                  width: 30.0,
                  child: Divider(
                  color: Colors.black,
                ),
            ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset('images/pizza.png',           
              width: 140,            
              height: 200, 
              ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 8.0),
                  child: TextField(
                     style: TextStyle(color: Colors.black),
                     decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.greenAccent[700]),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                    color: Colors.black 
                     ),
                    contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                  ),
                  ),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green[600], width: 1.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                  ),
                  ),
                  ),
                    cursorColor: Colors.black,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 8.0),
                  child: TextField(
                     obscureText: true,
                     style: TextStyle(color: Colors.black),
                     decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key, color: Colors.greenAccent[700]),
                    labelText: 'Password',
                     labelStyle: TextStyle(
                    color: Colors.black 
                     ),
                    contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                  ),
                  ),
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green[600], width: 1.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                  ),
                  ),
                  ),
                    cursorColor: Colors.black,
                  ),
                  ),
                
                SizedBox(height: 20.0),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 90.0),
                 child: FlatButton(
                  color: Colors.greenAccent[700],
                  child: Text('Login' 
                  ),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),

                   );
                  },
              ),
               ),  
              ],
            ),
      
    ),
    ),
      )
    );

  }
}