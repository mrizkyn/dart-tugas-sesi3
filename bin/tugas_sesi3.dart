//mengirim modul employee.dart
import 'package:tugas_sesi3/employee.dart';

void main(List<String> arguments) {
  //membuat objek employee
  employee staff1 = employee("116007","Usman");
  employee staff2 = employee("116008", "Basir", tahunMasuk:2021);
  employee staff3 = employee("116009", "Bagas", tahunMasuk:2020);

  //memanggil method presensi untuk mencatat kehadiran
  staff1.presensi(DateTime.parse('2023-10-29 13:12:30'));
  staff2.presensi(DateTime.parse('2023-10-29 13:13:30'));
  staff3.presensi(DateTime.parse('2023-10-29 13:14:30'));

  //memanggil method gaji
  staff1.Gaji = 5000000;
  staff2.Gaji = 5500000;
  
  //mengatur alamat
  staff1.address = "Jl. Gatot Subroto";
  staff1.address = "Jl. Ahmad Yani";

  print(staff1.deskripsi());
  print(staff2.deskripsi());
  print(staff3.deskripsi());
}
