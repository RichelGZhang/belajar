import 'package:belajar/halaman_gambar.dart';
import 'package:belajar/halaman_layout.dart';
import 'package:belajar/halaman_profil.dart';
import 'package:belajar/widgets/items.dart';
import 'package:flutter/material.dart';



class HalamanAwal extends StatelessWidget {
  const HalamanAwal({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String judul_aplikasi = "Aplikasi Pembelajaran Dasar Fluter";
    return  Scaffold(
      backgroundColor: Color(0xFFd0f4f7),
          appBar: AppBar(title: Text("Aplikasi Dasar Fluter"), backgroundColor: Colors.teal),
          body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Container(
                    width: 350,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text(judul_aplikasi, textAlign: TextAlign.center, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Nunito"
                    )),
                  ),
                  Divider(),

                  SizedBox(height: 25,),

                  Container(
                    width: 375,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        judulMenu("Daftar Materi"),
                        Divider(),
                        itemMateri(context, "Halaman Layout", HalamanLayout()),
                        Divider(),
                        itemMateri(context, "Halaman Profil", HalamanProfil()),
                        Divider(),
                        itemMateri(context, "Halaman Gambar", HalamanGambar()),
                    ],
                  ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text("Halaman Layout"),
                        //     ElevatedButton(
                        //       child : Text("Buka"),
                        //       onPressed: (){
                        //         Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanLayout()
                        //         ));
                        //       },
                        //     )
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text("Halaman Profil"),
                        //     ElevatedButton(
                        //       child : Text("Buka"),
                        //       onPressed: (){
                        //         Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanProfil()
                        //         ));
                        //       },
                        //     )
                        //   ],
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text("Halaman Gambar"),
                        //     ElevatedButton(
                        //       child : Text("Buka"),
                        //       onPressed: (){
                        //         Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanGambar()
                        //         ));
                        //       },
                        //     )
                        //   ],
                        // ),

                  ),
                ]
              ),
          ),
    );
  }
}
