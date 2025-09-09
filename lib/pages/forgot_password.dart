import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String? email;
  TextEditingController mailcontroller =new TextEditingController();
  final _formkey=GlobalKey<FormState>();
  resetPassword()async{

    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "password Reset email has been sent!",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          );

    } on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "No user found for the email.",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          );
      }
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: 60.0),
            Container(
              child: Text(
                "Password Recovery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),

            Text(
                "Enter your mail",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),
              Form(
                key: _formkey,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70,width: 2.0,),borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    controller: mailcontroller,
                    validator: (value){
                      if(value==null ||value.isEmpty){
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 15.0,color: Colors.white),
                      prefixIcon: Icon(Icons.mail_outline,color: Colors.white70,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              GestureDetector(
                      onTap: ()async {

                        if(_formkey.currentState!.validate()){
                          setState(() {
                            email=mailcontroller.text;
                          });
                          resetPassword();
                        }

                        
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFFdf711a),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          "Send Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
