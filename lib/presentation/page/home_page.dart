import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/const.dart';
import '../widgets/custom_clipper.dart';

/// Display the home page.
class HomePage extends StatelessWidget {
  /// Constructor of [HomePage].
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyCustomClipper(clipType: ClipType.bottom),
            child: Container(
              color: Theme.of(context).colorScheme.secondary,
              height: AppColors.headerHeight + statusBarHeight,
            ),
          ),
          Positioned(
            right: -45,
            top: -30,
            child: ClipOval(
              child: Container(
                color: Colors.black.withOpacity(0.05),
                height: 220,
                width: 220,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(AppColors.paddingSide),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2,
                  enlargeCenterPage: true,
                ),
                items: [
                  _caroucelTitle('Construction Estimation Calculator'),
                  _caroucelTitle(
                      '''Choose quotes that have already been produced according to your means'''),
                  _caroucelTitle('Be inspired by our projects'),
                  _caroucelTitle('Create your own construction estimate'),
                ],
              )),
        ],
      ),
    );
  }
}

SizedBox _caroucelTitle(String title) => SizedBox(
    width: 30,
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ));
