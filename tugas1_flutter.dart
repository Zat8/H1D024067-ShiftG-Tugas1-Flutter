class Queue {
  // Menggunakan List untuk menyimpan elemen antrian (tipe data String)
  List<String> antrian = [];

  // Metode enqueue: menambahkan data ke urutan paling belakang
  void enqueue(String data) {
    antrian.add(data);
    print("Berhasil masuk antrian: $data");
  }

  // Metode pop: mengeluarkan data dari urutan paling depan (indeks ke-0)
  void pop() {
    if (antrian.isNotEmpty) {
      String keluar = antrian.removeAt(0);
      print("Keluar dari antrian: $keluar");
    } else {
      print("Antrian kosong, tidak ada data yang bisa dikeluarkan!");
    }
  }

  // Metode tambahan untuk menampilkan isi antrian saat ini
  void tampilkan() {
    print("Isi antrian sekarang: $antrian\n");
  }
}

void main() {
  // Membuat objek dari class Queue
  Queue antrianLoket = Queue();

  // Memasukkan data ke dalam antrian (enqueue)
  antrianLoket.enqueue("Budi");
  antrianLoket.enqueue("Siti");
  antrianLoket.enqueue("Andi");
  antrianLoket.tampilkan();

  // Mengeluarkan data pertama yang masuk (pop)
  antrianLoket.pop();
  antrianLoket.tampilkan();

  // Mengeluarkan data berikutnya
  antrianLoket.pop();
  antrianLoket.pop();
  antrianLoket.tampilkan();

  // Mencoba pop saat antrian sudah kosong
  antrianLoket.pop();
}