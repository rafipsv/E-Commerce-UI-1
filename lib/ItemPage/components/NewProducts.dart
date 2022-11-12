// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class NewProducts extends StatelessWidget {
  final List<String> newItems;
  final List<String> newItemsTitle;
  final String handler;
  const NewProducts({
    super.key,
    required this.newItems,
    required this.newItemsTitle,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        newItems.length,
        (index) => FadeInDown(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(
                  top: 0,
                  bottom: 20,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/$handler$index.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(
                  top: 0,
                  bottom: 20,
                  left: 30,
                  right: 30,
                ),
                padding: const EdgeInsets.only(
                    left: 15, right: 12, bottom: 15, top: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.35),
                      Colors.black.withOpacity(0.18),
                      Colors.black.withOpacity(0.05),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 1000),
                          child: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1200),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          newItemsTitle[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 3,
                                            shadows: [
                                              Shadow(
                                                blurRadius: 2,
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                offset: const Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "100\$",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 3,
                                            shadows: [
                                              Shadow(
                                                blurRadius: 2,
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                                offset: const Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: const Icon(
                                    Icons.shopping_cart,
                                    color: Color.fromARGB(255, 83, 81, 81),
                                    size: 22,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
