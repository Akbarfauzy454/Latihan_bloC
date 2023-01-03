import 'package:flutter/material.dart';

class TextBerubah extends StatelessWidget {
  final String text;
  const TextBerubah({Key? key, required this.text,}) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
