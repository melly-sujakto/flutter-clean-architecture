part of 'karyawan_bloc.dart';

abstract class KaryawanState {}

class KaryawanInitial extends KaryawanState {}

class KaryawanLoading extends KaryawanState {}

class KaryawanLoaded extends KaryawanState {
  final List<KaryawanEntity> karyawanEntities;

  KaryawanLoaded({required this.karyawanEntities});
}

class KaryawanError extends KaryawanState {}
