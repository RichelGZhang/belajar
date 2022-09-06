import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanLibrary extends StatefulWidget {
  const HalamanLibrary({Key? key}) : super(key: key);

  @override
  State<HalamanLibrary> createState() => _HalamanLibraryState();
}

class _HalamanLibraryState extends State<HalamanLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(20),
            child: Column(
            children: [
              Text("Halaman Library"),

              Icon(MdiIcons.checkAll, color: Colors.green,),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blueAccent
                ),
                child: Icon(MdiIcons.facebook, color: Colors.white,),
              ),

              Html(
                  data: """
                  <h1>HTML di Flutter</h1>
                  <p style="color: #22aadd">Halo!</p>
                  <ul>
                    <li>Rychell</li>
                    <li>Ricel Superior</li>
                    <li>Ricel Junior</li>
                  </ul>
                  """,
              ),

              Text("Kunjungi channel saya :"),

              ElevatedButton(
                onPressed: () {
                  launch("https://google.com");
                },
                  child: Text("Buka Channel"),
              ),

            ],
          ),
        ),
        ),
      ),
    );
  }
}
