import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuisku/keranjangPage.dart';

class DetailPage extends StatelessWidget {
  // final Movie movie;
  final String image;
  final String name;
  final int price;
  final String desc;
  final String cantegory;
  final double rating;
  final int review;
  final int sold;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    this.price = 0,
    required this.desc,
    required this.cantegory,
    this.rating = 0,
    this.review = 0,
    this.sold = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(
                height: 16,
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text("${price}", style: GoogleFonts.bebasNeue()),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Text("${desc}", style: GoogleFonts.roboto()),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Text(
                "Category : " + cantegory,
                style: GoogleFonts.bebasNeue(),
                textAlign: TextAlign.left,
              ),
              Text(
                "Rating : ${rating}",
                style: GoogleFonts.bebasNeue(),
                textAlign: TextAlign.left,
              ),
              Text(
                "Reviewer : ${review}",
                style: GoogleFonts.bebasNeue(),
                textAlign: TextAlign.left,
              ),
              Text(
                "Sold : ${sold}",
                style: GoogleFonts.bebasNeue(),
                textAlign: TextAlign.left,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return KeranjangPage(
                        text: name,
                      );
                    }));
                  },
                  child: Text("Masukkan Keranjang")),
            ],
          ),
        ),
      ),
    );
  }
}
