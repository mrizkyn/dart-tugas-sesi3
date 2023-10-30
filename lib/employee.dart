
const umr = 3700000;

class employee{
  String nip;
  String name;
  String? address;
  int tahunMasuk;
  int _gaji = umr;

  //konstruktor employee
  employee(this.nip, this.name, {this.tahunMasuk = 2021});
  
  //metode untuk mencatat kehadiran berdasarkan waktu masuk
  void presensi(DateTime jamMasuk){
    if (jamMasuk.hour > 7) {
      print("$name Terlambat");
    }
    else{
      print("$name Tepat Waktu");
    }
  }
  
  // untuk menghasilkan text
  String deskripsi(){
    String teks = """==========
    NIP: $nip
    Nama: $name
    Gaji: $_gaji
    """;
    if (address !=null){
      teks +="Alamat: $address";
    }
    return teks;
  }

  //menghitung tunjangan berdasarkan tahun masuk
  int get tunjangan => ((2023-tahunMasuk)<5)? 500000 : 1000000;

  //menghitung gaji total
  int get Gaji => (_gaji + tunjangan);

  //setter digunakan untuk mengatur gaji karyawan dengan validasi
  set Gaji(int Gaji){
    if (Gaji < umr ){
      _gaji = umr;
      print("Gaji $name, tidak boleh dibawah UMR");
    } else {
      _gaji = Gaji;
    }
  }
}