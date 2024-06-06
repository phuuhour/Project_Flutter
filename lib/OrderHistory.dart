import 'package:flutter/material.dart';
class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'Order History',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Container(),
    );
  }
}
