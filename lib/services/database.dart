

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethod{
  Future addUserDetails(Map<String,dynamic> userInfoMap,String id)async{
    return await FirebaseFirestore.instance
    .collection("users")
    .doc(id)
    .set(userInfoMap);
  }
  //ye jb user booking krega tb  wh jakr firebases me store ho jayega or bookihg me show hoga
  Future addUserBooking(Map<String,dynamic> userInfoMap)async{
    return await FirebaseFirestore.instance
    .collection("Booking")
    
    .add(userInfoMap);
  }
  Future<Stream<QuerySnapshot>>getBookings()async{
    return await FirebaseFirestore.instance.collection("Booking").snapshots();

  }
  //jb admin done krega to automatically booking me detete ho jayega with firebases

   Future DeleteBooking(String id)async{
    return await FirebaseFirestore.instance
    .collection("Booking")
    
    .doc(id).delete();
  }

}

