import 'package:simple_app/data/repositories/karyawan_repository_impl.dart';
import 'package:simple_app/domain/entities/karyawan_entity.dart';
import 'package:simple_app/domain/repositories/karyawan_repository.dart';

class KaryawanUsecase {
  final KaryawanRepository repository = KaryawanRepositoryImpl();

  Future<List<KaryawanEntity>> getListKaryawan() async {
    return repository.getListKaryawan();
  }
}
