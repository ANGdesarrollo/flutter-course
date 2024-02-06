import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Stan Lee'), actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.orange[900],
              child: const Text('SL'),
              ),
          )
        ]),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage("https://imgs.search.brave.com/c9PiO7JgUeB_bQEvK871dDlcixvv9DWJDy3gRwQMlok/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/Zm90by1ncmF0aXMv/Y2VycmFyLWxpbmRv/LWdhdG8taW50ZXJp/b3JfMjMtMjE0ODg4/MjU4NS5qcGc_c2l6/ZT02MjYmZXh0PWpw/Zw"),
          ),
        ));
  }
}
