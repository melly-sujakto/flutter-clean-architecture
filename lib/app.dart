
import 'package:flutter/material.dart';
import 'package:simple_app/presentation/karyawan_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KaryawanScreen(title: 'Simple App'),
    );
  }
}