import '../const/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pembatas extends StatelessWidget {
  String text;
  Pembatas({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: const BoxDecoration(
        color: greyPrimary,
      ),
      padding: const EdgeInsets.only(
        left: 20,
        top: 7.5,
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 15, fontFamily: "Sofia", fontWeight: FontWeight.bold),
      ),
    );
  }
}
