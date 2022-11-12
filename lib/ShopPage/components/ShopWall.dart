// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/SplashPage/HomePage.dart';
import 'package:flutter/material.dart';

class ShopWall extends StatelessWidget {
  const ShopWall({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FadeInDown(
      child: Stack(
        /// this is for showing some blakish effect on bottom of wall.
        children: [
          Container(
            width: size.width,
            height: size.height * 0.50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// this is for showing some blakish effect on bottom of wall.
          Container(
            width: size.width,
            height: size.height * 0.50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
            child: Column(
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 800),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 15),

                    /// this row is for showing top bar.
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const HomePage()),
                                ),
                                (route) => false);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                /// this spacer is for push down everything.
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 30),

                  /// this Column is for showing for viewing more items.
                  child: Column(
                    children: [
                      FadeInDown(
                        delay: const Duration(milliseconds: 1000),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Our New products",
                              style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  letterSpacing: 1.5),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInDown(
                        delay: const Duration(milliseconds: 1200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "VIEW MORE",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 18,
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
      ),
    );
  }
}
