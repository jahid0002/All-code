import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
 final String senderUserId;
 final String receiverUserId;
 final String message;
 final Timestamp timestamp;

  MessageModel(
      {required this.message,
      required this.receiverUserId,
      required this.senderUserId,
      required this.timestamp});  

Map<String, dynamic> toMap(){
  return { 

       'senderUserId' : senderUserId,  
       'receiverUserId' : receiverUserId, 
       'message'   : message,  
       'timestamp' : timestamp,
       
  };
}

}
