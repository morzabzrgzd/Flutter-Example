import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class CircularMenuScreen extends StatelessWidget {
  const CircularMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xff121212),
        centerTitle: true,
        title: const Text(
          'Circular Menu',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: CircularMenu(
        alignment: Alignment.center,
        toggleButtonAnimatedIconData: AnimatedIcons.menu_close,
        animationDuration: const Duration(seconds: 1),
        items: [
          CircularMenuItem(
              icon: Icons.home,
              color: Colors.amber,
              iconColor: Colors.black,
              onTap: () {
              print('home');
              }),
          CircularMenuItem(
              icon: Icons.search,
              color: Colors.red,
              iconColor: Colors.black,
              onTap: () {
              print('search');
                //callback
              }),
          CircularMenuItem(
              icon: Icons.message,
              iconColor: Colors.black,
              color: Colors.green,
              onTap: () {
                //callback
              print('message');
              }),
          CircularMenuItem(
              iconColor: Colors.black,
              color: Colors.grey,
              icon: Icons.dashboard,
              onTap: () {
              print('dashboard');
                //callback
              }),
          CircularMenuItem(
              iconColor: Colors.black,
              color: Colors.orange,
              icon: Icons.offline_bolt,
              onTap: () {
              print('offline');
                //callback
              }),
          CircularMenuItem(
              iconColor: Colors.black,
              color: Colors.deepPurple,
              icon: Icons.camera,
              onTap: () {
              print('camera');
                //callback
              }),
          CircularMenuItem(
              iconColor: Colors.black,
              color: Colors.indigoAccent,
              icon: Icons.settings,
              onTap: () {
              print('setting');
                //callback
              }),
          CircularMenuItem(
              iconColor: Colors.black,
              color: Colors.lime,
              icon: Icons.star,
              onTap: () {
              print('star');
                //callback
              }),
          CircularMenuItem(
              iconColor: Colors.black,
              color: Colors.teal,
              icon: Icons.bookmark,
              onTap: () {
              print('bookmark');
                //callback
              }),
        ],
      ),
    );
  }
}
