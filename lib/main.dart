import 'package:flutter/material.dart';
import 'package:projek3/view/daftar_anggota_view.dart';
import 'package:projek3/view/daftar_buku_view.dart';
import 'package:projek3/controller/perpustakaan_controller.dart';

void main() {
  PerpustakaanController perpustakaanController = PerpustakaanController();

  runApp(MyApp(perpustakaanController: perpustakaanController));
}

class MyApp extends StatelessWidget {
  final PerpustakaanController perpustakaanController;

  MyApp({required this.perpustakaanController});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perpustakaan'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Daftar Buku',
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 8),
                  Expanded(
                    child: DaftarBukuView(perpustakaanController.daftarBuku),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Daftar Anggota',
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 8),
                  Expanded(
                    child:
                        DaftarAnggotaView(perpustakaanController.daftarAnggota),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
