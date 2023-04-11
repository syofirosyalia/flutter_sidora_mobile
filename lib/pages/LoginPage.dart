import 'package:flutter/material.dart';
import 'package:flutter_sidora_1/pages/Started.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Selamat Datang!"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 40),
          TextField(
            autocorrect: false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
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
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              label: Text("Password"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text("MASUK"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                onPressed: () {},
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
    );
  }
}
