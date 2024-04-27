import 'buku.dart';

class Anggota {
  String nama;
  int nomorAnggota;
  String alamat;
  List<Buku> bukuDipinjam = [];

  Anggota(this.nama, this.nomorAnggota, this.alamat);

  void pinjamBuku(Buku buku) {
    bukuDipinjam.add(buku);
  }

  void kembalikanBuku(Buku buku) {
    bukuDipinjam.remove(buku);
  }
}
