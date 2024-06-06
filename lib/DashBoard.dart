import 'package:coffeeapp/Setting.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
          child: SizedBox(
              height: 15,
              width: 15,
              child: Image.asset(
                'assets/images/cafe_building_shop_coffee_store_icon_210184.png',
                width: 15,
                height: 15,
                fit: BoxFit.cover,
              )),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.grey[850],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Coffee',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 45,
            child: TextFormField(
              cursorColor: Colors.white,
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 18,
                color: Colors.white,
              ),
              cursorHeight: 24,
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[850],
                filled: true,
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
