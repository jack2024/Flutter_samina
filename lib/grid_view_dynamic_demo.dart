import 'package:flutter/material.dart';
import 'package:helloworld1/my_card.dart';

class Cardmodel {
  final String? title;
  final String? subTitle;
  final IconData? icon;

  Cardmodel({this.title, this.subTitle, this.icon});
}

List<Cardmodel> cards = [
  Cardmodel(title: 'title-1', subTitle: 'sub-1', icon: Icons.ac_unit),
  Cardmodel(title: 'title-2', subTitle: 'sub-2', icon: Icons.api),
  Cardmodel(title: 'title-3', subTitle: 'sub-3', icon: Icons.alarm),
  Cardmodel(title: 'title-4', subTitle: 'sub-4', icon: Icons.account_balance),
  Cardmodel(title: 'title-5', subTitle: 'sub-5', icon: Icons.backup_rounded),
];

class GridviewDymamicDemo extends StatelessWidget {
  const GridviewDymamicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: List.generate(cards.length, (index) {
              var model = cards[index];
              return CardAction(model: model);
            }),
          ),
        ),
      ),
    );
  }
}

class CardAction extends StatelessWidget {
  const CardAction({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Cardmodel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          onTap: () {
            print(model.title);
          },
          child: MyCard(
              title: model.title, subTitle: model.subTitle, icon: model.icon),
        ),
      ),
    );
  }
}
