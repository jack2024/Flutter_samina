import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Container(
          color: Colors.blue,
          height: 250,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Icon(
                Icons.ac_unit_outlined,
                color: Colors.amber,
                size: 64,
              ),
              // ignore: prefer_const_constructors
              Icon(
                Icons.access_alarm,
                size: 64,
              ),
              // ignore: prefer_const_constructors
              Icon(
                Icons.account_box_outlined,
                size: 64,
              )
            ],
          ),
        ),
      ),
    );
  }
}
