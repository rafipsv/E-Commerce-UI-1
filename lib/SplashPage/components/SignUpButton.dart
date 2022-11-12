// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FadeInDown(
      delay: const Duration(milliseconds: 1500),
      child: Container(
        width: size.width,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Text(
            "Create Account",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
