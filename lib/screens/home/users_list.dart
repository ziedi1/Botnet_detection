import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:botnet_detection/models/user.dart';
import 'package:botnet_detection/screens/home/user_tile.dart';
class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    final users=Provider.of<List<User>>(context);
     users.forEach((user) {
      print(user.name);
      print(user.status);

    });

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context,index){
        return UserTile(user: users[index]);
      },
    );
  }
}
