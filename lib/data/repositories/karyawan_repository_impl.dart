import 'package:simple_app/data/datasources/karyawan_datasource.dart';
import 'package:simple_app/data/models/karyawan_model.dart';
import 'package:simple_app/domain/repositories/karyawan_repository.dart';

class KaryawanRepositoryImpl implements KaryawanRepository {
  final datasource = KaryawanDatasource();

  @override
  Future<List<KaryawanModel>> getListKaryawan() async {
    return datasource.getListKaryawan();
  }
}
