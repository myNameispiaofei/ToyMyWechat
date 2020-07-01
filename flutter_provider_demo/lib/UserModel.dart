import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  String  name;
  int age;
  UserModel(this.name, this.age);
  void update(UserModel userModel){
    name = userModel.name;
    age = userModel.age;
  }
}
