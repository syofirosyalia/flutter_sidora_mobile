import 'package:flutter/material.dart';

class HalamanStok extends StatefulWidget {
  const HalamanStok({Key? key}) : super(key: key);

  @override
  State<HalamanStok> createState() => _HalamanStokState();
}

class _HalamanStokState extends State<HalamanStok> {
  List<StokDarah> stokDarahList = [
    StokDarah(tipe: 'A', jumlah: 10),
    StokDarah(tipe: 'B', jumlah: 5),
    StokDarah(tipe: 'AB', jumlah: 8),
    StokDarah(tipe: 'O', jumlah: 12),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stok Darah'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Tipe Darah')),
            DataColumn(label: Text('Jumlah')),
          ],
          rows: stokDarahList.map((stok) {
            return DataRow(cells: [
              DataCell(Text(stok.tipe)),
              DataCell(Text(stok.jumlah.toString())),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}

class StokDarah {
  String tipe;
  int jumlah;

  StokDarah({required this.tipe, required this.jumlah});
}
