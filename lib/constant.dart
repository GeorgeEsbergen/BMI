// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class result_card extends StatelessWidget {
  const result_card({
    super.key,
    required this.size,
    required this.result,
  });

  final Size size;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 6,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 4.0,
        shadowColor: Colors.grey,
        shape: const CircleBorder(
          eccentricity: 0.9,
        ),
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            result,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
