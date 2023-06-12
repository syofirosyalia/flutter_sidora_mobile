import 'package:flutter/material.dart';
import 'package:flutter_sidora_1/pages/SetelahLogin.dart';
import 'package:flutter_sidora_1/pages/Registrasi.dart';
// import 'package:flutter_sidora_1/pages/Started.dart';
// import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, 
        body: Form(
          child: Center(
          child: Container(
          padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat Datang!",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 40),
            TextField(
            autocorrect: false,
            textInputAction: TextInputAction.next, 
            decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // tambahkan padding vertikal
            label: Text("Email"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),

          SizedBox(height: 30),
          TextField(
            autocorrect: false,
            obscureText: true,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15), // tambahkan padding vertikal
              label: Text("Password"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetelahLogin()),
                );
              },
              child: Text("MASUK"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registrasi()),
                    );
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
          ),
      ),
        ),
    );
  }
}