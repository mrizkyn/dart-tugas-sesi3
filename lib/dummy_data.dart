import "package:tugas_sesi3/employee4.dart";

List<Map<String, dynamic>> dummyData() {
  List<Map<String, dynamic>> data = [
    {
      "nip": "112345",
      "name": "Dani",
      "thn_masuk": 2019,
      "jabatan": TipeJabatan.direktur,
      "alamat": "Bandung Timur"
    },
    {
      "nip": "113444",
      "name": "Ferian",
      "thn_masuk": 2016,
      "jabatan": TipeJabatan.manajer,
      "alamat": "Kota Bandung"
    },
    {
      "nip": "1123334",
      "name": "Ucup",
      "thn_masuk": 2017,
      "jabatan": TipeJabatan.kabag,
      "alamat": "Kab Bandung"
    },
    {
      "nip": "199979",
      "name": "Imron",
      "thn_masuk": 2021,
      "alamat": "Kota Bandung"
    },
  ];

  return data;
}
