import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   title: const Text(
      //             'Profile',
      //             style: TextStyle(
      //     fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
      //           ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.brown[800],
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25, left: 20),
                    child: Text(
                      'Setting',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 85, left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: const Image(
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                          image: NetworkImage(
                              'https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/429792839_18387404506075514_8709093994927746276_n.jpg?stp=dst-jpg_p480x480&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG8DJ-d0LWd6-3-IiBbQO1MqNOjr803BkKo06OvzTcGQsEmhO5q0E14uWdSlPWcgmGMUdhgbv0FrQ8R94u__2AW&_nc_ohc=9DKLB7out2cQ7kNvgEZ4WUV&_nc_ht=scontent.fpnh11-1.fna&oh=00_AYDr7a_Go2E5S2JbaNmCrlmhcdme6hr2JVz--EcjsEv-hw&oe=665DCEBE')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 95, left: 120),
                    child: Text(
                      'Hello!',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 130, left: 120),
                    child: Text(
                      'MoneyOutdone',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
