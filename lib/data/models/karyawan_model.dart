import 'package:simple_app/domain/entities/karyawan_entity.dart';

class KaryawanModel extends KaryawanEntity {
  KaryawanModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
  });

  factory KaryawanModel.fromJson(Map<String, dynamic> jsonMap) {
    return KaryawanModel(
      id: jsonMap['id'],
      name: jsonMap['name'],
      email: jsonMap['email'],
      phone: jsonMap['phone'],
    );
  }
}
