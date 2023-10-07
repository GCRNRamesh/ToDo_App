// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  final Icon icon1;
  final String name;
  const Textfields(this.icon1,this.name,{super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: name,
          prefixIcon: icon1,
          border: const OutlineInputBorder()),
    );
  }
}
