import 'package:flutter/material.dart';
import '/Screens/Home/Components/app_bar.dart';
import '/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen

    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/bg.png"),
            fit: orientation == Orientation.portrait ? BoxFit.fitHeight : BoxFit.cover,
            alignment: orientation == Orientation.portrait ? const Alignment(0.68, 0) : const Alignment(0, 0),
            scale: 1
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(child: CustomAppBar()),
              // Spacer(),
              // It will cover 1/3 of free spaces
              Body(),
              // Spacer(
              //   flex: 2,
              // ),
              // it will cover 2/3 of free spaces
            ],
          ),
        ),
      ),
    );
  }
}
