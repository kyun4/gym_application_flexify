import 'package:flutter/material.dart';

class ButtonCustomPrimary extends StatefulWidget {
  final String buttonText;
  const ButtonCustomPrimary({super.key, required this.buttonText});

  @override
  State<ButtonCustomPrimary> createState() => _ButtonCustomPrimaryState();
}

class _ButtonCustomPrimaryState extends State<ButtonCustomPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 116, 8, 155),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Center(
            child: Text(widget.buttonText,
                style: TextStyle(color: Colors.white))));
  }
}
