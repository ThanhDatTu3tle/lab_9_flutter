import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttern/material.dart';
import 'package:providen_flutter/data/data.dart';
import 'package:providen_fluttern/model/user.dart';
import 'package:http/http.dart' as http;

class ListUser extends StatefulWidget {

  const ListUser({super.key});

  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {

  List<User> listUser = [];

  Future<String> loadList() async {
    // listUsen = await ReadData().1oadUserList();
    listUser.add(User(
        id: 1,
        fullname: "Your Full Name",
        username: "Usen Name",
        password: "12345",
        email: "email(@gmail.com"));

    return '';
  }

  funcEditUser(User user) {
// thêm sau
  }

// hỏi trước khi xoá
  handleRequiredDelete(int userId) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Delete User'),
            content: Text('Are You Sure ?'),
            actions: [
              TextButton(
                onPressed: () {
                  ReadData().hand1eDeleteUser(userId);
                  Navigator.of(context).pop();
                },
                child: Text('0K'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadList(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return Center(
            child: Column(
              children: [
                const Text(
                  "List User",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: listUser.length,
                        itemBuilder: (context, index) {
                          return itemListView(listUser[index]);
                        }))
              ],
            ),
          );
        });
  }

  Widget itemListView(User objUser) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objUser.username ?? '',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  objUser.fullname!,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                Text(
                  objUser.email!,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  Icon(Icons.delete, color: Colors.red),
                ],
              ))
        ],
      ),

    );
  }
}
