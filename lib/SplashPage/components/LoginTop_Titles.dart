// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class LoginTopTitles extends StatelessWidget {
  const LoginTopTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          child: Row(
            children: const [
              Text(
                "Brand New",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FadeInDown(
          child: Row(
            children: const [
              Text(
                "Perspective",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        FadeInDown(
          child: Row(
            children: const [
              Text(
                "Let's start with our collections",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
