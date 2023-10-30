import 'package:tugas_sesi3/employee4.dart';
import 'package:tugas_sesi3/dummy_data.dart';

void main(List<String> arguments) {
  List<Employee> dataEmployee = genData(dummyData());

  dataEmployee[0].presensi(DateTime.parse('2023-10-15 09:58:30'));
  dataEmployee[1].presensi(DateTime.parse('2023-10-15 08:02:30'));
  dataEmployee[2].presensi(DateTime.parse('2023-10-15 09:01:30'));

  dataEmployee[0].gaji = 1500000;
  dataEmployee[1].gaji = 500000;
  dataEmployee[2].gaji = 45000000;

  dataEmployee[1].address = "Bandung Timur, Jawa Barat Indonesia";
  dataEmployee[2].address = "Jl. cigondewah no 1";

  for (var staff in dataEmployee) {
    print(staff.deskripsi());
  }
}

List<Employee> genData(var listData) {
  List<Employee> data = [];
  for (var dataPegawai in listData) {
    Employee employee;
    if (dataPegawai.containsKey('jabatan')) {
      employee = Pejabat(
          dataPegawai['nip'], dataPegawai['name'], dataPegawai['jabatan']);
    } else {
      employee = StafBiasa(dataPegawai['nip'], dataPegawai['name']);
    }
    if (dataPegawai.containsKey('tahun_masuk')) {
      employee.tahunMasuk = dataPegawai['tahun_masuk'];
    }
    data.add(employee);
  }
  return data;
}
