import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_app/presentation/karyawan/bloc/karyawan_bloc.dart';
import 'package:simple_app/presentation/karyawan/widget/karyawan_card_widget.dart';

class KaryawanScreen extends StatelessWidget {
  KaryawanScreen({Key? key}) : super(key: key);

  final bloc = KaryawanBloc();

  @override
  Widget build(Object context) {
    bloc.add(GetListKaryawanEvent());

    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("List Karyawan"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BlocBuilder<KaryawanBloc, KaryawanState>(
            builder: (context, state) {
              if (state is KaryawanLoading) {
                return const Center(
                  child: Text("Loading..."),
                );
              }
              if (state is KaryawanError) {
                return const Center(
                  child: Text("Error saat pengambilan data list karyawan"),
                );
              }
              if (state is KaryawanLoaded) {
                final listKaryawan = state.karyawanEntities;
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: List.generate(listKaryawan.length, (index) {
                      final karyawan = listKaryawan[index];
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: KaryawanCardWidget(
                            karyawan: karyawan,
                          ));
                    }),
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
