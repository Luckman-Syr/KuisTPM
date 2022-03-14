import 'package:flutter/material.dart';

class KeranjangPage extends StatelessWidget {
  final String text;
  const KeranjangPage({Key, key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(),
      ),
    ));
  }
}
