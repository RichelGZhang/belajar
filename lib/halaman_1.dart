import 'package:belajar/widgets/kartu_nama.dart';
import 'package:flutter/material.dart';

class HalamanPertama extends StatefulWidget {
  const HalamanPertama({Key? key}) : super(key: key);

  @override
  State<HalamanPertama> createState() => _HalamanPertamaState();
}

class _HalamanPertamaState extends State<HalamanPertama> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Daftar Anggota"),

        Container(
          height: 450,
          child: ListView(
            children: [
              KartuNama(
                  nama: "Rychelle Trita",
                  study: "Chemistry",
                  fictionStory: "I love chemistry since I was born, "
                      "when I was little I played with fire every day,"
                      "until I burned down my school. I apologized to them,"
                      "but they never forgave me. The End.",
                  urlProfil: "https://awsimages.detik.net.id/community/media/visual/2021/04/30/disaster-girl.png?w=700&q=90"
              ),

              KartuNama(
                  nama: "Ruby Graciela Zhang",
                  study: "Computer Science",
                  fictionStory: "I like computer field because,"
                      " I want to hack wifi and family link."
                      "I got this motivation from my father",
                  urlProfil: "https://asset.kompas.com/crops/Z6aV1cupwexzdzurSJ3hAl9JJK8=/0x4:742x499/750x500/data/photo/2021/11/05/61853d999ab09.jpg"
              ),

              KartuNama(
                  nama: "Kembaran Ruby",
                  study: "Computer Science",
                  fictionStory: "tydack ada",
                  urlProfil: "https://asset.kompas.com/crops/Z6aV1cupwexzdzurSJ3hAl9JJK8=/0x4:742x499/750x500/data/photo/2021/11/05/61853d999ab09.jpg"
              ),
              KartuNama(
                  nama: "Kembaran Ruby",
                  study: "Computer Science",
                  fictionStory: "tydack ada",
                  urlProfil: "https://asset.kompas.com/crops/Z6aV1cupwexzdzurSJ3hAl9JJK8=/0x4:742x499/750x500/data/photo/2021/11/05/61853d999ab09.jpg"
              ),
              KartuNama(
                  nama: "Kembaran Ruby",
                  study: "Computer Science",
                  fictionStory: "tydack ada",
                  urlProfil: "https://asset.kompas.com/crops/Z6aV1cupwexzdzurSJ3hAl9JJK8=/0x4:742x499/750x500/data/photo/2021/11/05/61853d999ab09.jpg"
              ),
              KartuNama(
                  nama: "Kembaran Ruby",
                  study: "Computer Science",
                  fictionStory: "tydack ada",
                  urlProfil: "https://asset.kompas.com/crops/Z6aV1cupwexzdzurSJ3hAl9JJK8=/0x4:742x499/750x500/data/photo/2021/11/05/61853d999ab09.jpg"
              )
            ],
          )

        ),



      ],
    );
  }
}
