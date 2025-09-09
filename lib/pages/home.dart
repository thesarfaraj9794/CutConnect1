import 'package:barber_booking_app/pages/booking.dart';
import 'package:barber_booking_app/services/shared_pref.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? name;
  getthedatafromsharedpref()async{
    name=await SharedpreferenceHelper().getUserName();
    //image=await SharedpreferenceHelper().getUserImage();
    setState(() {
      
    });
  }
  getontheload()async{
    await getthedatafromsharedpref();
    setState(() {
      
    });
  }
  @override
  void initState(){
    getontheload();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b1615),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      Text(
                        //name!,
                         name == null ? "Loading..." : name!,

                        
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(197, 91, 220, 230),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/barber10.png",
                      
                      
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Divider(color: const Color.fromARGB(77, 14, 196, 241),thickness: 3,),
              SizedBox(height: 10.0),
              Text(
                "Service",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Booking(service: "classic saving"),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/barbr3.png",
                              height: 100,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Classic Saving",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 18.0),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Booking(service: "hair Washing"),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/barbr2.png",
                              height: 100,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Hair  Washing",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Booking(service: "hair couting"),
                          ),
                        );
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/barbr1.png",
                              height: 100,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Hair Couting",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 18.0),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Booking(service: "Beared Trimming"),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/barber19.png",
                              height: 100,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Beared Trimming",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.0),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Booking(service: "Facial"),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/barbr5.png",
                              height: 100,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Facial",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 18.0),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Booking(service: "kids hair couting"),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                         color: Color(0xFFe29452),
                         
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/barbr4.png",
                              height: 100,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "kids hair couting",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        
                      ),
                    ),
                    
                  ),
                  
                ],
              ),
            ],
          ),
        ),
        
      ),
      
    );
    
  }
}
