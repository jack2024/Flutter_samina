// ignore_for_file: prefer_const_constructors

import 'page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridviewDymamicDemo(),
    );
  }
}
