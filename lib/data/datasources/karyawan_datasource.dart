import 'dart:convert';

import 'package:fire_http/fire_http.dart';
import 'package:simple_app/data/models/karyawan_model.dart';

class KaryawanDatasource {
  final httpClient = Http2Client();

  Future<List<KaryawanModel>> getListKaryawan() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/users");

    final response = await httpClient.get(uri);

    final listKaryawanJson = json.decode(response.body) as List;

    final List<KaryawanModel> listKaryawan = listKaryawanJson
        .map((value) => KaryawanModel.fromJson(value as Map<String, dynamic>))
        .toList();

    return listKaryawan;
  }
}
