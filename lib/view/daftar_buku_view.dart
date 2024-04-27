import 'package:flutter/material.dart';
import '../model/buku.dart';

class DaftarBukuView extends StatelessWidget {
  final List<Buku> daftarBuku;

  DaftarBukuView(this.daftarBuku);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daftarBuku.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(daftarBuku[index].judul),
          subtitle: Text("Pengarang: ${daftarBuku[index].pengarang}"),
        );
      },
    );
  }
}
