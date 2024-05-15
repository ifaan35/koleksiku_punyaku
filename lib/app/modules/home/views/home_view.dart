import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1DB954),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: const Text('Koleksiku Punyaku'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemExtent: 155, // Tinggi setiap item ditambah jarak 5
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            margin:
                EdgeInsets.symmetric(vertical: 5), // Jarak antar item sebesar 5
            color: Colors.white,
            alignment: Alignment.center,
            child: Text("Item ${index + 1} ListView"),
          );
        },
      ),
    );
  }
}
