import 'package:belajar/halaman_awal.dart';
import 'package:flutter/material.dart';

class HalamanGambar extends StatelessWidget {
  const HalamanGambar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String link_pemandangan = "https://cdns.klimg.com/merdeka.com/i/w/news/2021/10/21/1366484/670x335/10-pemandangan-keren-di-indonesia-wajib-dikunjungi-langsung.jpg";
    String link_monas = "https://cdn.pixabay.com/photo/2013/07/13/13/47/monument-161538_960_720.png";

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Halaman Gambar", style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 25
                ),),
              ),
              Image.asset("assets/chair.jpg"),
              Image.asset("assets/meeting.jpg"),

              Divider(),

              Image.asset("assets/chair.jpg", width: 150,),

              Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/chair.jpg", width: 100,),
                  Image.asset("assets/meeting.jpg", width: 100,),
                  Image.asset("assets/chair.jpg", width: 100,),
                ],
              ),

              SizedBox(height: 50,),
              Container(
                  width: 250,
                  height: 250,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Image.network(link_pemandangan, fit: BoxFit.cover),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(130)
                      ),
                      child: Image.network(link_pemandangan, fit: BoxFit.cover),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(130)
                    ),
                    child: Image.network(link_pemandangan, fit: BoxFit.cover),
                  ),
                ],
              ),


              Padding(padding: const EdgeInsets.only(top: 20, bottom: 5),
                child: Text("Gambar Monas", style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico"
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child : Text("Monumen Nasional Indonesia"),
              ),
              Image.network(link_monas),

              SizedBox(height: 100,),

              Icon(Icons.search),
              GestureDetector(
                onTap: (){
                  print("di Klik");
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HalamanAwal()
                    ));
                },
                  child: Icon(Icons.home)
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                  Icon(Icons.star, color: Colors.orange,),
                ],
              ),


              SizedBox(height: 100,),

            ],
          ),
        ),
      ),
    );
  }
}
