import 'package:flutter/material.dart';
import 'package:kuisku/homePage.dart';

class KeranjangPage extends StatelessWidget {
  final String text;
  const KeranjangPage({Key, key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Page'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Container(),
      ),
    ));
  }
}
