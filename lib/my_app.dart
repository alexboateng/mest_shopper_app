import 'package:flutter/material.dart';
import 'package:mest_shopper_app/dresses_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoppa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DressesPage(),
    );
  }
}
