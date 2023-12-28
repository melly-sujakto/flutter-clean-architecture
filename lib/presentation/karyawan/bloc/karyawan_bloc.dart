import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:simple_app/domain/entities/karyawan_entity.dart';
import 'package:simple_app/domain/usecases/karyawan_usecase.dart';

part 'karyawan_event.dart';
part 'karyawan_state.dart';

class KaryawanBloc extends Bloc<KaryawanEvent, KaryawanState> {
  KaryawanUsecase usecase = KaryawanUsecase();

  KaryawanBloc() : super(KaryawanInitial()) {
    on<GetListKaryawanEvent>((event, emit) async {
      emit(KaryawanLoading());
      try {
        final listKaryawan = await usecase.getListKaryawan();
        emit(KaryawanLoaded(karyawanEntities: listKaryawan));
      } catch (e) {
        emit(KaryawanError());
        if (kDebugMode) {
          print("error: $e");
        }
      }
    });
  }
}
