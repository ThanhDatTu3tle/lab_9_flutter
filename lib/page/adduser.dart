
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  final strName = TextEditingController();

   final strUserName = TextEditingController();

   final strPassword = TextEditingController();

   final strEmail = TextEditingController();

   @override
   Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Add USER'),
        ),
        body: Padding(
            padding: EdgeInsets.all(19),
            child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(19, 22, 19, 19), child: Text(
                    'USER TINFORMATION',
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
                  controller: strName,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Full Name'),
              ),
            ),
           Container(
               padding: EdgeInsets.all(19),
               child: TextField(
                 controller: strUserName,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User Name'),
              ),
           ),
           Container(
               padding: EdgeInsets.all(19),
               child: TextField(
                 controller: strPassword,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
               ),
           ),
          Container(
            padding: EdgeInsets.all(19),
            child: TextField(
              controller: strEmail,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: Text('Save'),
              onPressed: () {},
            ),
          ),




   ],),),);}}



