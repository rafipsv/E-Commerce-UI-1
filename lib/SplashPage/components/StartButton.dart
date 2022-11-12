// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/ShopPage/ShopPage.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FadeInDown(
      delay: const Duration(milliseconds: 1300),
      child: GestureDetector(
        onTap: (() {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: ((context) => const ShopPage()),
              ),
              (route) => false);
        }),
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          width: size.width,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              "Get Start",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
