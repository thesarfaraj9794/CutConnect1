import 'package:barber_booking_app/pages/home.dart';
import 'package:barber_booking_app/pages/singup.dart';
import 'package:barber_booking_app/pages/Admin/admin_login.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b1615),

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          

          children: [
            Row(
              children: [
                Image.asset("assets/images/barber1.jpeg", height: 30),
              
            
            SizedBox(width: 5.0),
            Text(
              "CutConnect",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
            ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFdf711a), // button color
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
      ),
       onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminLogin()));
      },
      child: const Text(
        "Admin Login",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
      ),
    ),
            
          ],
          
          
        ),
        backgroundColor: Color(0xFFdf711a),
        
        elevation: 4.0,
        foregroundColor: Colors.white,
        actions: [
          
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Icon(Icons.person,color: Colors.white,))
        ],
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 120.0),

          child: Column(
            children: [
              Image.asset("assets/images/barbr6.png"),
              SizedBox(height: 20), //yaha se login pages pr ja rahe h
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Singup()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:  Color.fromARGB(255, 35, 201, 243).withOpacity(0.4), 
                        offset: Offset(0, 0), // shadow sab taraf
        blurRadius: 20, // soft shadow
        spreadRadius: 4,
                      ),
                    ],
                    color: Color(0xFFdf711a),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    
                    "Get a stylish haircut",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
