// ignore_for_file: file_names
import 'package:e_commerce/ItemPage/components/ItemTop.dart';
import 'package:e_commerce/ItemPage/components/NewProducts.dart';
import 'package:e_commerce/ShopPage/components/CategoryTitle.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> productList;
  final List<String> productTitle;
  final String handler;
  const ItemPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.productList,
    required this.productTitle,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ItemTop(
            itemImage: imageUrl,
            title: title,
          ),
          const CategoryTitle(title: "New Products", buttonText: "View More >"),
          NewProducts(
            newItems: productList,
            newItemsTitle: productTitle,
            handler: handler,
          )
        ],
      ),
    );
  }
}
