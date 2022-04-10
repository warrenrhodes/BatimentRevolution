import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import 'custom_clipper.dart';

///
class CardMain extends StatelessWidget {
  final ImageProvider _image;
  final String _title;

  ///
  CardMain(
    this._image,
    this._title,
  );

  @override
  Widget build(BuildContext context) => Container(
        width: (MediaQuery.of(context).size.width - 75) / 2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: AppColors.kGreenRGBO,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Icon and Hearbeat
                  Image(width: 92, height: 82, image: _image),
                  Text(_title,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.homeTitleItemCard),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            onTap: () {
              debugPrint('CARD main clicked. redirect to details page');
            },
          ),
        ),
      );
}
