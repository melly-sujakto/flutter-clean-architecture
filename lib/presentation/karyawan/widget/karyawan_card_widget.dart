import 'package:flutter/material.dart';
import 'package:simple_app/domain/entities/karyawan_entity.dart';

class KaryawanCardWidget extends StatelessWidget {
  final KaryawanEntity karyawan;
  const KaryawanCardWidget({
    Key? key,
    required this.karyawan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _CardRow(keyText: 'ID', value: karyawan.id.toString()),
                _CardRow(keyText: 'Name', value: karyawan.name, useBold: true),
                _CardRow(keyText: 'Email', value: karyawan.email),
                _CardRow(keyText: 'Phone', value: karyawan.phone),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                backgroundColor: Colors.blue[100],
                child: const Icon(
                  Icons.person_outlined,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardRow extends StatelessWidget {
  final String keyText;
  final String value;
  final bool useBold;
  const _CardRow({
    Key? key,
    required this.keyText,
    required this.value,
    this.useBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          keyText,
          style: TextStyle(
            fontWeight: useBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          ': ',
          style: TextStyle(
            fontWeight: useBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: useBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
