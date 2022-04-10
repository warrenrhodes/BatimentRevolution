import 'package:flutter/material.dart';

import 'app_colors.dart';

/// The big rounded button used as main action button in screens.
final ButtonStyle roundedBigButton = ButtonStyle(
    elevation: MaterialStateProperty.all(5.0),
    backgroundColor: MaterialStateProperty.all(AppColors.kGreenRGBO),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    ));

/// The small rounded button used to add items to the cart.
final ButtonStyle roundedSmallButton = ButtonStyle(
    elevation: MaterialStateProperty.all(5.0),
    backgroundColor: MaterialStateProperty.all(AppColors.blue),
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 5, horizontal: 30)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
    ));
