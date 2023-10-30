//mengirim modul employee.dart
import 'package:tugas_sesi3/employee.dart';

void main(List<String> arguments) {
  employee staff1 = employee("116606", "Udin");
  employee staff2 = employee("116661", "Ajun", tahunMasuk: 2021);
  employee staff3 = employee("116552", "Asep", tahunMasuk: 2020);

  staff1.presensi(DateTime.parse('2023-10-29 13:12:30'));
  staff2.presensi(DateTime.parse('2023-10-29 13:13:30'));
  staff3.presensi(DateTime.parse('2023-10-29 13:14:30'));

  staff1.Gaji = 5000000;
  staff2.Gaji = 5500000;

  staff1.address = "Jl. Yang benar";
  staff1.address = "Jl. Illahi";

  print(staff1.deskripsi());
  print(staff2.deskripsi());
  print(staff3.deskripsi());
}
