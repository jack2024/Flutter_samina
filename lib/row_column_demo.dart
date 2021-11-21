import 'package:flutter/material.dart';

import 'my_card.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 100,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              MyCard(
                title: 'PREP',
                subTitle: '25 min',
                icon: Icons.save,
              ),
              SizedBox(
                width: 15,
              ),
              MyCard(
                title: 'COOK',
                subTitle: '25 min',
                icon: Icons.ac_unit,
              ),
              SizedBox(
                width: 15,
              ),
              MyCard(
                title: 'PREP',
                subTitle: '25 min',
                icon: Icons.alarm,
              ),
              SizedBox(
                width: 15,
              ),
              MyCard(
                title: 'PREP',
                subTitle: '25 min',
                icon: Icons.backup,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
