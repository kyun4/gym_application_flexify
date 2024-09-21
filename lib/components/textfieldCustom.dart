import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldCustomPrimary extends StatefulWidget {
  final String hintText;
  final String prefixIcon;
  final String suffixIcon;
  final bool isObscureText;
  const TextFieldCustomPrimary(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.suffixIcon,
      required this.isObscureText});

  @override
  State<TextFieldCustomPrimary> createState() => _TextFieldCustomPrimaryState();
}

class _TextFieldCustomPrimaryState extends State<TextFieldCustomPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 10),
      child: TextField(
          obscureText: widget.isObscureText,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                  left: 10, right: 10, top: 12, bottom: 12),
              prefixIcon: Container(
                  height: 15,
                  width: 15,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  child: SvgPicture.asset(widget.prefixIcon)),
              suffixIcon: SvgPicture.asset(widget.suffixIcon),
              fillColor: Color(0xffE7E1E1),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              hintText: widget.hintText,
              hintStyle: const TextStyle(fontWeight: FontWeight.w400))),
    );
  }
}
