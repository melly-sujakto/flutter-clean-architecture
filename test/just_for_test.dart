import 'package:flutter_test/flutter_test.dart';
import 'package:simple_app/data/datasources/karyawan_datasource.dart';

void main() {
  test("test", () async {
    KaryawanDatasource datasource = KaryawanDatasource();
    final res = await datasource.getListKaryawan();
    expect(res, []);
  });
}
