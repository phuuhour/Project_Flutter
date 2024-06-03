import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[850],
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[850]),
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  //profile img
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const Image(
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                          image: NetworkImage(
                              'https://scontent.fpnh10-1.fna.fbcdn.net/v/t39.30808-1/444505287_1151922775853237_877715756016378631_n.jpg?stp=cp6_dst-jpg_p200x200&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZoRoSrn0oW2zdACu0l68eO8xAMzFz5_I7zEAzMXPn8llaskMi_4Cp_wridZwWVx3bFginVhoOAVnQTEc-lG5f&_nc_ohc=nE_gILrXp20Q7kNvgHJLSvR&_nc_ht=scontent.fpnh10-1.fna&oh=00_AYCtc3W_Q1tQ64ytPRLt5sEN6JKA1iguz_luoBEj3dcIqQ&oe=6660E1B3')),
                    ),
                  ),
                  //icon camera
                  const Padding(
                    padding: EdgeInsets.only(top: 75, left: 210),
                    child: SizedBox(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 28,
                        shadows: [Shadow(color: Colors.white, blurRadius: 2)],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
