import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'ModelClass.dart';
void main() => runApp( MaterialApp(
  home: DataEntryScreen(),
));
class DataEntryScreen extends StatefulWidget {
  @override
  _DataEntryScreenState createState() => _DataEntryScreenState();
}


class _DataEntryScreenState extends State<DataEntryScreen> {
 func(String email,String password) async
 {
   AuthResult authResult  =  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: null, password: null);
   User user = User(email,authResult.user.uid,"Registration");
   Firestore.instance.collection("roles").document(authResult.user.uid).setData(user.toMap());
   FirebaseAuth.instance.signOut();
 }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(

        )
      ],
    );
  }
}
