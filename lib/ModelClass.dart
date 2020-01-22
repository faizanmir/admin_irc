import 'dart:collection';

class User {
  String uid;
  String role;
  String email;

  User(this.uid, this.role, this.email);

  Map<String,dynamic> toMap()
  {
    Map<String,String> map = new Map();
    map['role'] =  this.role;
    map['email'] = this.email;
    map['uid'] =  this.uid;
    return map;
  }


}