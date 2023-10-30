import 'package:tugas_sesi3/employee3.dart';

void main(List<String> arguments) {
  List<Employee> dataEmployee = [];
  dataEmployee.add(Pejabat("D33617", "Aep", TipeJabatan.direktur));
  dataEmployee.add(Pejabat("K90112", "Aep", TipeJabatan.kabag));
  dataEmployee[1].tahunMasuk = 2016;
  dataEmployee.add(StafBiasa("M89182", "Baron", tahunMasuk: 2020));

  dataEmployee[0].presensi(DateTime.parse('2023-10-15 09:58:30'));
  dataEmployee[1].presensi(DateTime.parse('2023-10-15 08:02:30'));
  dataEmployee[2].presensi(DateTime.parse('2023-10-15 08:58:30'));

  dataEmployee[1].gaji = 500000;
  dataEmployee[2].gaji = 45000000;

  dataEmployee[1].address = "Bandung, Jawa Barat Indonesia";
  dataEmployee[2].address = "Jl. cigondewah no 1";

  for (var staff in dataEmployee) {
    print(staff.deskripsi());
  }
}
