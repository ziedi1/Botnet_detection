import 'package:botnet_detection/screens/authenticate/sign_in.dart';
import 'package:botnet_detection/screens/wrapper.dart';
import 'package:botnet_detection/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:botnet_detection/services/database.dart';
import 'package:botnet_detection/models/user.dart';
import 'package:botnet_detection/screens/home/users_list.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  /*final User user;
  Home(this.user);

  createAlertDialog(){
    TextEditingController attackcontroller  =TextEditingController();
    return showDialog(builder: (context){
      return AlertDialog(
        title: Text('CA Detection'),
        content: Text(
          'Botnet Attack is detected'
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text('OK'),
            onPressed: (){

            },
          )
        ],
      );
    });
  }*/

  @override
  Widget build(BuildContext context) {
      return StreamProvider<List<User>>.value(
        value: DatabaseService().users,
        child: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
            title: Text('Users List'),
            backgroundColor: Colors.blue[400],
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('logout'),
                onPressed: () async {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Wrapper()),
                  );
                },
              )
            ],
          ),
          body: UserList(),
        ),
      );
    }
  }

