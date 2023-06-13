import 'package:flutter/material.dart';

class HalamanAgenda extends StatefulWidget {
  const HalamanAgenda({Key? key}) : super(key: key);

  @override
  _HalamanAgendaState createState() => _HalamanAgendaState();
}

class _HalamanAgendaState extends State<HalamanAgenda> {
  List<AgendaItem> agendaItems = [
    AgendaItem(
      place: 'Hospital A',
      donationDate: 'June 15, 2023',
      donateAtPlace: '9:00 AM',
      donors: ['John Doe', 'Jane Smith', 'David Johnson'],
      bagsNeeded: 3,
    ),
    AgendaItem(
      place: 'Clinic B',
      donationDate: 'June 18, 2023',
      donateAtPlace: '2:00 PM',
      donors: ['Emily Brown', 'Michael Davis'],
      bagsNeeded: 2,
    ),
    // Add more agenda items as needed
    AgendaItem(
      place: 'Kampus POLINDRA',
      donationDate: 'June 21, 2023',
      donateAtPlace: '8:00 AM',
      donors: [],
      bagsNeeded: 75,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Agenda Donor',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 17),
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 10 / 5, // Sesuaikan rasio yang diinginkan
                  child: Card(
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jadwal Utama PMI',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Hari:  Senin - Minggu',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Waktu: 24 Jam',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 8,
                  child: Image.asset(
                    'assets/images/jadwalpmi.png', // Path gambar yang ingin ditampilkan
                    width: 200,
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ...agendaItems.map((item) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                child: ListTile(
                  title: Text(item.place),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item.bagsNeeded.toString()} kantong',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Donation Date: ${item.donationDate} - ${item.donateAtPlace}',
                      ),
                    ],
                  ),
                  trailing: ElevatedButton(
                    child: Text(
                      'Donor',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Tombol donor ditekan
                      // Tambahkan logika yang diinginkan ketika tombol donor ditekan
                    },
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class AgendaItem {
  String place;
  String donationDate;
  String donateAtPlace;
  List<String> donors;
  int bagsNeeded;

  AgendaItem({
    required this.place,
    required this.donationDate,
    required this.donateAtPlace,
    required this.donors,
    required this.bagsNeeded,
  });
}
