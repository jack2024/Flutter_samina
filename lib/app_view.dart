import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  String caption = 'Hello World....';

  @override
  void initState() {
    print('INIT STATE');
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hello World AppBar'),
      ),
      body: SafeArea(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text('$caption'),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  'HEADER Drawer',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: const Icon(
                Icons.ac_unit,
              ),
              title: const Text('MENU-1'),
              onTap: () {
                // ignore: avoid_print
                print('MENU-1');
              },
            ),
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.account_box_sharp,
              ),
              title: const Text('MENU-2'),
              onTap: () {
                // ignore: avoid_print
                print('MENU-2');
              },
            ),
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                Icons.add_alert_rounded,
              ),
              title: const Text('MENU-3'),
              onTap: () {
                // ignore: avoid_print
                print('MENU-3');
              },
            ),
          ],
        ),
      ),
      //endDrawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('onPress');
          setState(() {
            caption = 'HELLO WORLD';
          });
        },
        child: const Icon(Icons.add_comment_rounded),
      ),
    );
  }
}
