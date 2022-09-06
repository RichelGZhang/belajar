import 'package:belajar/widgets/items.dart';
import 'package:flutter/material.dart';

class HalamanState extends StatefulWidget {
  const HalamanState({Key? key}) : super(key: key);

  @override
  State<HalamanState> createState() => _HalamanStateState();
}

class _HalamanStateState extends State<HalamanState> {
  //Property
  String tulisan  = "LAMA";
  int nilai = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(tulisan),
              Text(nilai.toString()),

              ElevatedButton(
                  onPressed:(){
                    setState((){
                      if(tulisan == "LAMA"){
                        tulisan = "BARU";
                      }else{
                        tulisan = "LAMA";
                      }

                    });
                  },
                child: Text("Ubah Text")
              ),
              
              //Pelajaran Cara memahami parameter wajib & bernama
              Divider(),

              daftarText(
                data: "Halo",
                nama: "Richel",
                kelas: "7A"
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            nilai += 1;
          });
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
      ),
    );
  }
}
