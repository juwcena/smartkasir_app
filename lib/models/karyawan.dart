class Karyawan {
  final int? id;
  final String namaKaryawan;
  final String pin;
  final String peran;

  const Karyawan({
    this.id,
    required this.namaKaryawan,
    required this.pin,
    required this.peran,
  });

  // Dart Object -> Map (untuk disimpan ke SQLite)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama_karyawan': namaKaryawan,
      'pin': pin,
      'peran': peran,
    };
  }

  // Map -> Dart Object (hasil baca dari SQLite)
  factory Karyawan.fromMap(Map<String, dynamic> map) {
    return Karyawan(
      id: map['id'] as int?,
      namaKaryawan: map['nama_karyawan'] as String,
      pin: map['pin'] as String,
      peran: map['peran'] as String,
    );
  }
}
