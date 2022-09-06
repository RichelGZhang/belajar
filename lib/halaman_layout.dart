import 'package:flutter/material.dart';

class HalamanLayout extends StatelessWidget {
  const HalamanLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Layout"),
        backgroundColor: Colors.pink,
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, left: 15,right: 15, bottom: 5),
                  margin: EdgeInsets.only(top: 50, bottom: 20),
                  color: Colors.teal.withOpacity(0.25),
                  width: 400,
                  height: 60,
                  child: Text("Halo, ini halaman layout", style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                  ))
                ),
                Divider(thickness: 5, color: Colors.amber),
                SizedBox(height: 15,),

                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Text("Container", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color:  Colors.white
                      )),
                      Text("Bisa memuat banyak widget"),
                      Text("Konten")
                    ],
                  ),
                ),

                SizedBox(height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurpleAccent,
                      child: Text("Container A"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurpleAccent,
                      child: Text("Container B"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.deepPurpleAccent,
                      child: Text("Container C"),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      child: Text("Konten"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      child: Text("Konten"),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      child: Text("Konten 2"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      child: Text("Konten 2", textAlign: TextAlign.center,),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      height: 500,
                      child: Text("Konten 3"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      height: 500,
                      child: Text("Konten 3"),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 100,
                      child: Text("Konten 4"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      color: Colors.orange,
                      width: 200,
                      child: Text("Konten 4", textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Kembali"),
                  ),
                ),

                SizedBox(height: 80,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
