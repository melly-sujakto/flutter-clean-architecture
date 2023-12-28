import 'package:simple_app/domain/entities/karyawan_entity.dart';

abstract class KaryawanRepository {
  Future<List<KaryawanEntity>> getListKaryawan();
}
