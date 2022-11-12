// ignore_for_file: file_names
import 'package:e_commerce/ItemPage/components/ItemTopBar.dart';
import 'package:flutter/material.dart';

class ItemTop extends StatelessWidget {
  final String itemImage;
  final String title;
  const ItemTop({super.key, required this.itemImage, required this.title});

  @override
  Widget build(BuildContext context) {
    /// this is for top image of product.
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(itemImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.21),
                Colors.black.withOpacity(0.03),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  /// this is for top app bar.
                  ItemTopBar(),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const  SizedBox(height: 80,),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 5,
                        shadows: [
                          Shadow(
                            blurRadius: 2,
                            color: Colors.white.withOpacity(0.7),
                            offset: const Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
