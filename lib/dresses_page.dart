// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mest_shopper_app/model/dress.dart';

class DressesPage extends StatelessWidget {
  DressesPage({Key? key}) : super(key: key);
  final List<Dress> dresses = [
    Dress(
        "Blue dress", "this is a blue dress", "NGN 100", "images/image1.jpeg"),
    Dress(
        "Green dress", "this is a blue dress", "NGN 100", "images/image2.jpeg"),
    Dress("Violet dress", "this is a blue dress", "NGN 100",
        "images/image3.jpeg"),
    Dress("Pink dress", "this is a blue dress", "NGN 100", "images/image4.jpeg")
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dresses"),
      ),
      body: ListView.builder(
          itemCount: dresses.length,
          itemBuilder: (BuildContext context, int index) {
            Dress item = dresses[index];
            return ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  item.imageName,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              subtitle: Text(item.description),
              title: Text(item.name),
            );
          }),
    );
  }
}
