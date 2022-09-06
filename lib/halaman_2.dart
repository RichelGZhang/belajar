import 'package:belajar/widgets/kartu_nama.dart';
import 'package:flutter/material.dart';

class HalamanKedua extends StatefulWidget {
  const HalamanKedua({Key? key}) : super(key: key);

  @override
  State<HalamanKedua> createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<HalamanKedua> {
  List<String> daftar_nama = [
    "Ruby", "Ryu", "Ryoko", "Ryo"
  ];

  List<String> daftar_waktu = [
    "15 OKtober 2005",
    "16 Oktober 2007",
    "10 April 2012",
    "18 Agustus 2014"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Daftar Riwayat Transaksi",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for(var i = 0; i < daftar_nama.length; i++) KartuTransaksi(
                nama: daftar_nama[i],
                waktu: daftar_waktu[i]

              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 150,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              for(var i = 0; i < daftar_nama.length; i++) KartuTransaksi(
                nama: daftar_nama[i],
                waktu: daftar_waktu[i]

              ),
            ],
          ),
        )
      ],
    );
  }
}
