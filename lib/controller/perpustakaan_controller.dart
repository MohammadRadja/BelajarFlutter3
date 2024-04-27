import '../model/anggota.dart';
import '../model/buku.dart';

class PerpustakaanController {
  List<Buku> daftarBuku = [
    Buku("Dart Programming", "John Doe", 2022, 300),
    Buku("OOP Concepts", "Jane Smith", 2020, 250),
  ];

  List<Anggota> daftarAnggota = [
    Anggota("Alice", 001, "Jl. ABC No. 123"),
    Anggota("Bob", 002, "Jl. XYZ No. 456"),
  ];

  void pinjamBuku(int anggotaIndex, int bukuIndex) {
    daftarAnggota[anggotaIndex].pinjamBuku(daftarBuku[bukuIndex]);
  }

  void kembalikanBuku(int anggotaIndex, int bukuIndex) {
    daftarAnggota[anggotaIndex].kembalikanBuku(daftarBuku[bukuIndex]);
  }
}
