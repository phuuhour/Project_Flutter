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
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[850]),
                  height: 190,
                  //width: double.infinity,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.brown[800],
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 20),
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
                      //update
                      const Padding(
                        padding: EdgeInsets.only(top: 80, left: 120),
                        child: Text(
                          'Sous Visa',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 115, left: 120),
                        child: Text(
                          'Content creator, Public person',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[850]),
                  height: 450,
                  //width: double.infinity,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.brown[800],
                  child: const Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Order History',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 60, left: 0),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Recent Orders',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              leading: Icon(
                                Icons.list,
                                color: Colors.white54,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white54,
                                size: 20,
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Order Details',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              leading: Icon(
                                Icons.shopify,
                                color: Colors.white54,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white54,
                                size: 20,
                              ),
                            ),ListTile(
                              title: Text(
                                'Reorder Option',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              leading: Icon(
                                Icons.receipt,
                                color: Colors.white54,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white54,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
