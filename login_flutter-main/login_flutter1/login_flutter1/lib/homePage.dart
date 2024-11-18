import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> services = [
    "Nike SB 1",
    "Nike SB 2",
    "Nike SB 3",
    "Nike SB 4",
    "Nike SB 5",
    "Nike SB 6",
    "Nike SB 7",
    "Nike SB 8",
  ];

  final List<String> images = [
    "assets/images/shoes1.jpg",
    "assets/images/shoes2.jpg",
    "assets/images/shoes3.jpg",
    "assets/images/shoes4.jpg",
    "assets/images/shoes5.jpg",
    "assets/images/shoes6.jpg",
    "assets/images/shoes7.jpg",
    "assets/images/shoes8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Utama"),
      ),
      body: GridView.builder(
        itemCount: services.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 2.6),
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 3,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                Image.asset(
                  images[index],
                  height: 50, // Sesuaikan ukuran gambar
                  width: 50,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    services[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
