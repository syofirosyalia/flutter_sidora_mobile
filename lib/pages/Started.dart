import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sidora_1/pages/LoginPage.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              height: size.height / 1.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Image.asset(
                "assets/images/Doctors.png",
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tentang Sidora dalam satu aplikasi",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 100,
                    ),
                    child: Text(
                      "Membantu anda menemukan informasi seputar donor darah. ",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    })),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // const Text(
            //   "Sudah punya akun? Masuk",
            //   style: TextStyle(
            //     fontFamily: "SFUIText",
            //     fontSize: 14,
            //     fontWeight: FontWeight.w500,
            //     color: Colors.blueGrey,
            //   ),
            // ),
          ],
        ),
      ),
      // appBar: AppBar(title: const Text('SIDORA UI')),
    );
  }
}
