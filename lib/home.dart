import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height:15),
            Image.asset(
              "assets/rpl.png",
              width: 160,
              height: 190,
            ),
            Text(
              "Rekayasa Perangkat Lunak",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
              ),
            Text(
              "SMK Negeri 1 Slawi",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.normal,
              ),
              ),
            Text("Siti Ully Hidayah"),
          ],
          )
        )
      );
    
  }
}