import 'package:flutter/material.dart';
import 'package:mest_shopper_app/model/dress.dart';

class DressDetailPage extends StatelessWidget {
  const DressDetailPage({Key? key, required this.dress}) : super(key: key);
  final Dress dress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dress Details"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(dress.name),
            Text(dress.price),
            Image.asset(
              dress.imageName,
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
