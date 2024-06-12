import 'package:coffeeapp/ProfileEdit.dart';
import 'package:flutter/material.dart';

import 'OrderHistory.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black87,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProfileEdit()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[850]),
                      height: 190,
                      width: MediaQuery.of(context).size.width,
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
                                      'https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/447511355_423250920693420_7265549173597236193_n.jpg?stp=dst-jpg_s640x640&_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH1sedHwC85vH7IDgj_moNmV27wZcxkd11XbvBlzGR3XYT3lsahzkwdVU9_9IqqSNO9ZpAMH86Q0YVnwLdRzrJy&_nc_ohc=rf24rua5m_cQ7kNvgEkRFRH&_nc_ht=scontent.fpnh11-1.fna&oh=00_AYBakFs9eYtsE0tXWdjIBYO3zTIjW6KSR1NtXaJLXUFnqQ&oe=666DB232')),
                            ),
                          ),
                          //update
                          const Padding(
                            padding: EdgeInsets.only(top: 80, left: 120),
                            child: Text(
                              'LY VENGHOUR',
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
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[850]),
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Personalization',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 0),
                          child: Column(
                            children: [
                              const ListTile(
                                title: Text(
                                  'Default Order',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.archive_rounded,
                                  color: Colors.white54,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white54,
                                  size: 20,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderHistory()));
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Order History',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  leading: Icon(
                                    Icons.history,
                                    color: Colors.white54,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white54,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const ListTile(
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[850]),
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Convenience',
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
                                  'Payment Method',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.payment,
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
                                  'Order Notifications',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.notifications,
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
                                  'Schedule Order (Advanced)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.schedule,
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
                        Padding(
                          padding: EdgeInsets.only(top: 60, left: 0),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Payment Method',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.payment,
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
                                  'Order Notifications',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.notifications,
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
                                  'Schedule Order (Advanced)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.schedule,
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[850]),
                    height: 185,
                    width: MediaQuery.of(context).size.width,
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Account Management',
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
                                  'Store Locations',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.store,
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
                                  'Loyalty Program',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.loyalty,
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[850]),
                    height: 185,
                    width: MediaQuery.of(context).size.width,
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Additional Features (Advanced)',
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
                                  'Special Instructions',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.hourglass_empty,
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
                                  'Preferred Barista (Advanced)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.loyalty,
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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[850]),
                    height: 185,
                    width: MediaQuery.of(context).size.width,
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'Additional Features (Advanced)',
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
                                  'Special Instructions',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.hourglass_empty,
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
                                  'Preferred Barista (Advanced)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                leading: Icon(
                                  Icons.loyalty,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
