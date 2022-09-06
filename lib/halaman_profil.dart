import 'package:flutter/material.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Profil"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
                padding: EdgeInsets.only(bottom: 20, left: 10),
                child: Text("Selamat datang di profil"),
            ),

            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Selamat datang di profil"),
            ),
            Text("Halaman Profil"),
            ElevatedButton(
                onPressed: (){
                  print("Tes");
            },
              child: Text("Lihat"),
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.teal,
              ),
            ),


            Row(
              children: [
                Text("Andi"),
                Text("17 Tahun"),
                Text("SMP N 1 Jakarta")
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nama"),
                      Text("Kelas"),
                      Text("Sekolah")
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Richel", style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("7A"),
                      Text("SMP Sariputra")
                    ],
                  ),
                ],
              ),
            )

          ],


        ),
      ),
    );
  }
}
