// ignore_for_file: file_names
import 'package:e_commerce/SplashPage/components/LoginTop_Titles.dart';
import 'package:e_commerce/SplashPage/components/SignUpButton.dart';
import 'package:e_commerce/SplashPage/components/StartButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /// getting total screen size.
    var size = MediaQuery.of(context).size;
    return Scaffold(
      /// using stack for some blakish gradient color on full screen.
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/category4.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.25)
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),

              /// this column is for showing items in splash page.
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /// it's for showing top texts in screen.
                  const LoginTopTitles(),
                  SizedBox(
                    height: size.height * 0.15,
                  ),

                  /// it's for showing start button in screen.
                  const StartButton(),

                  /// it's for showing create button in screen.
                  const SignUpButton(),
                  SizedBox(
                    height: size.height * 0.08,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
