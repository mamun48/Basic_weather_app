import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {

  String weburl = "https://jsonplaceholder.typicode.com/users";

  getUsers(weburl);

}

getUsers(var apiURL) async{
  var res = await http.get(Uri.https('jsonplaceholder.typicode.com','users'));
  var users = jsonDecode(res.body);

  for(var u in users)
  {
    User user = User(u["name"],u["email"],u["username"]);
    print(user.name);
    print(user.email);
  }


}

class User{
  String name,email,userName;
  User(this.name,this.email,this.userName);
}
