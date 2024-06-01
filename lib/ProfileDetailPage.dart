import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(
            child: Text(
          'Profile',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        )),
      ),
      //this is test
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.blue,
          ),Container(
            height: 100,
            color: Colors.red,
          ),Container(
            height: 100,
            color: Colors.tealAccent,
          ),
        ],
      ),
    );
  }
}
