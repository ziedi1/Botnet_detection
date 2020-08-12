import 'package:botnet_detection/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'package:botnet_detection/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:botnet_detection/models/admin.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    //return either home or authenticate widget
    if (user==null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
