import 'package:flutter/material.dart';

class HalamanDonor2 extends StatefulWidget {
  const HalamanDonor2({Key? key}) : super(key: key);

  @override
  State<HalamanDonor2> createState() => _HalamanDonor2State();
}

class _HalamanDonor2State extends State<HalamanDonor2> {
  List<RiwayatDonor> riwayatDonorList = [
    RiwayatDonor(nik: '1234567890', nama: 'John Doe', tanggalDonor: '12 Juni 2023'),
    RiwayatDonor(nik: '0987654321', nama: 'Jane Smith', tanggalDonor: '15 Juni 2023'),
    RiwayatDonor(nik: '9876543210', nama: 'Alice Johnson', tanggalDonor: '18 Juni 2023'),
    RiwayatDonor(nik: '2468135790', nama: 'Michael Brown', tanggalDonor: '20 Juni 2023'),
    RiwayatDonor(nik: '1357924680', nama: 'Emily Davis', tanggalDonor: '23 Juni 2023'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Pendonor',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: riwayatDonorList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('NIK: ${riwayatDonorList[index].nik}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: ${riwayatDonorList[index].nama}'),
                  Text('Tanggal Donor: ${riwayatDonorList[index].tanggalDonor}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class RiwayatDonor {
  String nik;
  String nama;
  String tanggalDonor;

  RiwayatDonor({
    required this.nik,
    required this.nama,
    required this.tanggalDonor,
  });
}
