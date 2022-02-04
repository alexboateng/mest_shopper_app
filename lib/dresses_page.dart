import 'package:flutter/material.dart';
import 'package:mest_shopper_app/model/dress.dart';
// class Dress {
//   final String name;
//   final String description;
//   final String price;
//   final String imageName;

//   Dress(this.name, this.description, this.price, this.imageName);
// }

class DressesPage extends StatelessWidget {
  DressesPage({Key? key}) : super(key: key);
  final List<Dress> dresses = [
    Dress("Blue dress", "this is a blue dress", "NGN 100", "image name"),
    Dress("Green dress", "this is a blue dress", "NGN 100", "image name"),
    Dress("Violet dress", "this is a blue dress", "NGN 100", "image name"),
    Dress("Pink dress", "this is a blue dress", "NGN 100", "image name")
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
          itemBuilder: (BuildContext context, int pos) {
            Dress item = dresses[pos];
            return ListTile(
              leading: Icon(
                Icons.image,
                size: 60,
              ),
              subtitle: Text(item.description),
              title: Text(item.name),
            );
          }),
    );
  }
}
