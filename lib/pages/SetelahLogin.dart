import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sidora_1/pages/LihatSemua.dart';

class SetelahLogin extends StatefulWidget {
  const SetelahLogin({super.key});

  @override
  State<SetelahLogin> createState() => _SetelahLogin();
}

class _SetelahLogin extends State<SetelahLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai,",
            style: TextStyle(
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: "Syofi Rosyalia",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 20,
              height: 20,
              child: Image.asset(
                "assets/images/apps.png",
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
        backgroundColor: Colors.red[900],
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              color: Colors.red[900],
              height: 250,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            // color: Colors.amber,
            child: Column(
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height * 0.42,
                  // color: Colors.green,
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE52027),
                                Color(0xFFB31217),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/SalamKemanusiaan.png",
                                    width: 330,
                                    height: 145,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  color: Colors.grey[200],
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        //body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Agenda",
                                    icon: "assets/images/part1.png",
                                  ),
                                  ItemKategori(
                                    title: "Stok  ",
                                    icon: "assets/images/part2.png",
                                  ),
                                  ItemKategori(
                                    title: "Donor ",
                                    icon: "assets/images/part3.png",
                                  ),
                                  ItemKategori(
                                    title: "Donor ",
                                    icon: "assets/images/part4.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tentang Sidora",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => LihatPage()),
                                    );
                                  },
                                  child: Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemTentang(
                                      image: "assets/images/slide1.jpg",
                                    ),
                                    ItemTentang(
                                      image: "assets/images/slide1.jpg",
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //Navigation
                        Container(
                          height: 75,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                icon: "home",
                                status: true,
                                title: "Beranda",
                              ),
                              ItemNav(
                                icon: "lokasi",
                                status: false,
                                title: "Agenda",
                              ),
                              ItemNav(
                                icon: "pesan",
                                status: false,
                                title: "pesan",
                              ),
                              ItemNav(
                                icon: "hospital",
                                status: false,
                                title: "Stok Darah",
                              ),
                              ItemNav(
                                icon: "user",
                                status: false,
                                title: "Akun",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemTentang extends StatelessWidget {
  const ItemTentang({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        width: screenWidth * 0.7,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  const ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          // color: Colors.redAccent,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          child: Image.asset(
            (status == true)
                ? "assets/images/$icon-active.png"
                : "assets/images/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5), //menambahkan SizedBox
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Colors.red[900] : Colors.grey[600],
          ),
        ), //menambahkan Text
      ],
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 60, size.height);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
