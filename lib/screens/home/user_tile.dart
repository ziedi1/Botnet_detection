import 'package:flutter/material.dart';
import 'package:botnet_detection/models/user.dart';

class UserTile extends StatelessWidget {

  final User user;
  UserTile({this.user});

  @override
  Widget build(BuildContext context) {
    if (user.status==1){
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.green,
          ),
          title: Text(user.name),
        ),
      ),
    );
  }else{
      return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red,
            ),
            title: Text(user.name),
          ),
        ),
      );
    }
  }
}
