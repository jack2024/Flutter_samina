import 'package:flutter/material.dart';

import 'my_card.dart';

class GridviewDemo extends StatelessWidget {
  const GridviewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2, // num of column
            crossAxisSpacing: 20, // 20 pixel
            mainAxisSpacing: 20, // 20 pixel
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Center(child: Text('1')),
                color: Colors.red[100],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Center(child: Text('2')),
                color: Colors.red[100],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Center(child: Text('3')),
                color: Colors.red[100],
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Center(child: Text('4')),
                color: Colors.red[100],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8),
                child: const MyCard(
                  title: 'COOK',
                  subTitle: '25 min',
                  icon: Icons.ac_unit,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
