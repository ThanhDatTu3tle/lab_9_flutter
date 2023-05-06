import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttern/material.dart';
import 'mainpage.dart';
import 'package:http/http.dart' as http;
import 'data/data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
 }



class _LoginPageState extends State<LoginPage> {
 final userName = TextEditingController();
 final password = TextEditingController();

 funcLogin() async {
  final strUserName = userName.text;
  final strPassword = password.text;

  try {
   if ((strUserName == "admin" && strPassword == "123") ||
       ReadData().checkUser(strUserName, strPassword) == true) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainPage()));
   } else {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
         return AlertDialog(
          title: Text('Warning'),
          content: Text("Userame or password is not correct."),
          actions: [
           TextButton(
            onPressed: () {
             return Navigator.of(context).pop();
            },

            child: Text('0K'),

           ),
          ],
         );
        });
   }
  } catch (err) {
   print(err);
  }
 }

 funcRegister() {
 // return Navigaton.of(context).pushNamed(RegistenNewScreen.routeName) ;
 }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
       title: Text('Login App'),
     ),
     body: Padding(
       padding: EdgeInsets.all(19),
       child: ListView(
         children: <Widget>[
           SizedBox(
             width: 199,
             height: 150,
             child: Image.asset(
            'assets/images/1logoqb.jpg'
         ),
     ),
     Container(
       alignment: Alignment.center,
       padding: EdgeInsets.fromLTRB(19, 22, 19, 19),
       child: Text(
        'LOGIN TNFORMATION',
         style: TextStyle(
           color: Colors.blue,
           fontWeight: FontWeight.w500,
           fontSize: 30,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(19),
        child: TextField(
         controller: userName,
         decoration: InputDecoration(
         border: OutlineInputBorder(), labelText: 'User Name'),
       ),

       ),

       Container(

       padding: EdgeInsets.fromLTRB(19, 10, 19, 19),
       child: TextField(

           controller: password,

     obscureText: true,

           decoration: InputDecoration(

     border: OutlineInputBorder(), labelText: 'Password'),
     ),
     ),

     // 1gnore: deprecated_member_use

     TextButton(
      onPressed: () {}, child: Text('Forgot Password')),
     Container(
       height: 50,
       padding: EdgeInsets.fromLTRB(19, 9, 10, 9),
       child: ElevatedButton(
         style: ElevatedButton.styleFrom(
         primary: Colors.teal,
         onPrimary: Colors.white,
         onSurface: Colors.grey,
       ),
       child: Text('Login'),
       onPressed: () {
       funcLogin();
     },
     ),
     ),

     Container(

     child: Row(

     children: <Widget>[

     Text("Does not have account?"),
     TextButton(
       child: Text("Sign in",
        style: TextStyle(fontSize: 20),
 ),

 onPressed: () {

 funcRegister();

 },

 ),
],
 mainAxisAlignment: MainAxisAlignment.center,
 ),

 )

 ],

 ),

 ),

 );

 }

}

