import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.ac_unit_outlined,
              color: Colors.amber,
              size: 64,
            ),
            Icon(
              Icons.access_alarm,
              color: Colors.red,
              size: 64,
            ),
            Icon(
              Icons.account_box_outlined,
              color: Colors.yellow,
              size: 64,
            )
          ],
        ),
      ),
    );
  }
}
