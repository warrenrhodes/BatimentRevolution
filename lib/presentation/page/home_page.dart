import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../themes/app_button_styles.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../widgets/card_main.dart';
import '../widgets/custom_clipper.dart';

/// Display the home page.
class HomePage extends StatelessWidget {
  /// Constructor of [HomePage].
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).size.height / 3.3;
    return Scaffold(
      backgroundColor: AppColors.kWhiteRGBO,
      body: SafeArea(
        minimum: EdgeInsets.zero,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyCustomClipper(ClipType.bottom),
                  child: Container(
                    color: AppColors.kGreenRGBO,
                    height: statusBarHeight,
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
                    padding: const EdgeInsets.all(15),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        aspectRatio: 1,
                        enlargeCenterPage: true,
                      ),
                      items: <Container>[
                        _caroucelTitle('Construction Estimation Calculator'),
                        _caroucelTitle(
                            'Choose a quote according to your means'),
                        _caroucelTitle('Be inspired by our projects'),
                        _caroucelTitle('Create your own construction estimate'),
                      ],
                    )),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Features :',
                      style: AppTextStyles.featuresText,
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          runSpacing: 25,
                          spacing: 25,
                          children: const <Widget>[
                            CardMain(
                              AssetImage('assets/plan.jpg'),
                              'Get inspired by our plans',
                            ),
                            CardMain(
                              AssetImage('assets/wall_1.png'),
                              'Construction calculator',
                            ),
                            CardMain(
                              AssetImage('assets/file_1.png'),
                              'Create your own estimate format',
                            ),
                            CardMain(
                              AssetImage('assets/devis_1.jpeg'),
                              'Get inspired by our estimation',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: roundedBigButton,
                        child: const Text(
                          'Simple Calculator',
                          style: AppTextStyles.simpleCalButton,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container _caroucelTitle(String title) => Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        shape: BoxShape.rectangle,
        color: Colors.black.withOpacity(0.1),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(title,
              textAlign: TextAlign.center, style: AppTextStyles.carouselTitle),
        ),
      ),
    );
