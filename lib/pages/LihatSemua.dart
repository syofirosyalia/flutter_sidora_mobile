import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sidora_1/pages/DetailBerita.dart';

class LihatPage extends StatefulWidget {
  const LihatPage({Key? key}) : super(key: key);

  @override
  _LihatPageState createState() => _LihatPageState();
}

class _LihatPageState extends State<LihatPage> {
  void navigateToDetailPage(Article article) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => DetailPage(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tentang Darah",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(), // Disable scrolling of inner ListView
          shrinkWrap: true,
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                navigateToDetailPage(articles[index]);
              },
              child: Card(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.network(
                          articles[index].imageUrl ?? "",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            articles[index].title ?? "No Title",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            articles[index].description ?? "No Description",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Author: ${articles[index].author ?? "No Author"}",
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Article {
  String? title;
  String? description;
  String? author;
  String? imageUrl;
  String? subtitle; // Add this property

  Article({
    this.title,
    this.description,
    this.author,
    this.imageUrl,
    this.subtitle,
  });
}

List<Article> articles = [
  Article(
    title: "Mengapa harus mendonorkan darah?",
    subtitle: "Data",
    description:
        "Donor darah adalah tindakan mulia yang dapat menyelamatkan nyawa. Dengan mendonorkan darah, Anda dapat membantu pasien yang membutuhkan transfusi darah dalam berbagai kondisi, seperti kecelakaan, operasi, atau kondisi medis tertentu. Selain itu, mendonorkan darah juga memiliki manfaat kesehatan bagi pendonor, seperti memperbarui stok darah dalam tubuh dan mengurangi risiko penyakit jantung. Jadi, ayo mulai mendonorkan darah dan jadilah pahlawan bagi sesama!",
    author: "Author 1",
    imageUrl:
        "https://img.freepik.com/free-vector/illustration-people-donating-blood_23-2148247481.jpg?w=900&t=st=1684784893~exp=1684785493~hmac=6bd67f7c4d24d1ead4436ecc1040c408b1542761d9b191995b9203e980aa73de",
  ),
  Article(
    title: "Manfaat Donor Darah",
    subtitle: "Data",
    description:
        "Donor darah memiliki manfaat yang penting bagi penerima dan pendonor. Beberapa manfaatnya antara lain:\n\n1. Menyelamatkan nyawa: Darah yang didonorkan dapat digunakan untuk transfusi dan membantu pasien yang membutuhkan darah.\n2. Mengurangi risiko penyakit jantung: Dengan mendonorkan darah secara teratur, Anda dapat membantu menjaga kesehatan jantung dan mengurangi risiko penyakit jantung.\n3. Memperbarui stok darah dalam tubuh: Setelah mendonorkan darah, tubuh akan memproduksi darah baru untuk menggantikan yang telah didonorkan.\n4. Mendeteksi penyakit: Sebelum mendonorkan darah, Anda akan menjalani pemeriksaan kesehatan yang dapat membantu mendeteksi adanya penyakit tertentu.\n\nJadi, mari bergabunglah dalam aksi donor darah dan rasakan manfaatnya bagi diri sendiri dan sesama!",
    author: "Author 2",
    imageUrl: "https://img.freepik.com/premium-vector/bag-blood-hand-donor_160308-3848.jpg?w=900",
  ),
  Article(
    title: "Persyaratan Donor Darah",
    subtitle: "Data",
    description:
        "Terdapat beberapa persyaratan yang perlu dipenuhi untuk menjadi pendonor darah. Beberapa persyaratan umum antara lain:\n\n1. Usia: Biasanya, pendonor harus berusia antara 17-65 tahun.\n2. Berat badan: Berat badan pendonor minimal harus mencapai 50 kg.\n3. Kesehatan: Pendonor harus dalam kondisi sehat dan tidak sedang mengalami penyakit menular, seperti flu atau demam.\n4. Gaya hidup sehat: Pendonor sebaiknya memiliki gaya hidup yang sehat, seperti tidak mengonsumsi alkohol dalam jumlah berlebihan atau tidak menggunakan narkoba.\n\nNamun, persyaratan dapat berbeda di setiap tempat donor darah. Sebelum mendonorkan darah, pastikan Anda memenuhi persyaratan yang berlaku dan berkonsultasilah dengan petugas medis yang bertanggung jawab.",
    author: "Author 3",
    imageUrl:
        "https://img.freepik.com/premium-vector/blood-donation-world-blood-donor-day-raising-hands-with-blood-type-volunteer-donate-blood_251139-574.jpg?w=900",
  ),
];
