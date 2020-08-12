import 'package:botnet_detection/screens/home/home.dart';
import 'package:botnet_detection/services/auth.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String login='';
  String password='';
  String error='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Sign in Admin'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val.isEmpty ? 'login or password incorrect' : null,
                onChanged: (val){
                  setState(() => login =val);
                }
              ),
            SizedBox(height: 20.0),
            TextFormField(
            obscureText: true,
            validator: (val) => val.length < 6 ? 'login or password incorrect ' : null,
            onChanged: (val){
              setState(() => password =val);
            }
          ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Sing in',
                  style: TextStyle(color: Colors.white),

                ),
                onPressed: () async{
                  print(login);
                  print(password);
                  if (login=="admin"&&password=="admin"){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                    }


                }
              ),
              SizedBox(height: 12.0,),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
