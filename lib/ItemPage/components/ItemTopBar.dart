// ignore_for_file: file_names
import 'package:e_commerce/ShopPage/ShopPage.dart';
import 'package:flutter/material.dart';

class ItemTopBar extends StatelessWidget {
  const ItemTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (() {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: ((context) => const ShopPage())),
                (route) => false,
              );
            }),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
          Row(
            children: const [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 22,
              ),
              Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
