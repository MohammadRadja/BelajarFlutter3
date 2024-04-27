import 'package:flutter/material.dart';
import '../model/anggota.dart';

class DaftarAnggotaView extends StatelessWidget {
  final List<Anggota> daftarAnggota;

  DaftarAnggotaView(this.daftarAnggota);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daftarAnggota.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(daftarAnggota[index].nama),
          subtitle: Text("Nomor Anggota: ${daftarAnggota[index].nomorAnggota}"),
        );
      },
    );
  }
}
