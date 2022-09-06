import 'package:flutter/material.dart';

class HalamanKetiga extends StatefulWidget {
  const HalamanKetiga({Key? key}) : super(key: key);

  @override
  State<HalamanKetiga> createState() => _HalamanKetigaState();
}

class _HalamanKetigaState extends State<HalamanKetiga> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Holaaa"),
        Text("Halaman 3", style: TextStyle(
          color: Colors.deepOrange
        ),)
      ],
    );
  }
}
