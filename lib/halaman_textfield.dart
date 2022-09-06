import 'package:flutter/material.dart';

class HalamanTextfield extends StatefulWidget {
  const HalamanTextfield({Key? key}) : super(key: key);

  @override
  State<HalamanTextfield> createState() => _HalamanTextfieldState();
}

class _HalamanTextfieldState extends State<HalamanTextfield> {
  String username = "username";
  String no_hp = "no_hp";
  String password = "password";
  String email = "email";
  String tes_tombol = "Klik";

  TextEditingController controller_username = TextEditingController();
  TextEditingController controller_nohp = TextEditingController();
  TextEditingController controller_password = TextEditingController();
  TextEditingController controller_email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Halaman TextField"),
            TextField(
              controller: controller_username,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username", //label + js
                  hintText: "Masukkan Username Anda" //placeholder
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: controller_nohp,
              keyboardType: TextInputType.number, // numeric only
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "No. HP",
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: controller_password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            
            SizedBox(height: 15),

            TextField(
              controller: controller_email,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.withOpacity(0.25),
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                border: OutlineInputBorder(
                  borderRadius : BorderRadius.circular(30),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
                hintText: "E-mail",
              ),
            ),

            ElevatedButton(
                onPressed: (){
                  setState ((){
                    username = controller_username.text;
                    no_hp = controller_nohp.text;
                    password = controller_password.text;
                    email = controller_email.text;

                    if (username == "" || no_hp == "" || password == ""|| email == ""){
                      tes_tombol = "Maaf, lengkapi data";
                    }else{
                      tes_tombol = "Berhasil";
                    }
                  });
                },
                child: Text(tes_tombol)
            ),
            // or = salah satu benar, true
            // and = salah satu salah, false


            Text(username),
            Text(no_hp),
            Text(password),
            Text(email),

          ],
        ),
      ),
    );
  }
}

