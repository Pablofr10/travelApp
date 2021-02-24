import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelApp/constants/color_constants.dart';
import 'package:travelApp/constants/style_constants.dart';

class RowWidget extends StatelessWidget {
  String image1;
  String image2;
  String title1;
  String subtitle1;
  String title2;
  String subtitle2;

  RowWidget(
      {@required this.image1,
      this.image2,
      this.title1,
      this.subtitle1,
      this.title2,
      this.subtitle2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.only(left: 16),
            height: 64,
            decoration: BoxDecoration(
              color: mFillColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: mBorderColor, width: 1),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  this.image1,
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        this.title1,
                        style: mServiceTitleStyle,
                      ),
                      Text(
                        this.subtitle1,
                        style: mServiceSubtitleStyle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.only(left: 16),
            height: 64,
            decoration: BoxDecoration(
              color: mFillColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: mBorderColor, width: 1),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  this.image2,
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        this.title2,
                        style: mServiceTitleStyle,
                      ),
                      Text(
                        this.subtitle2,
                        style: mServiceSubtitleStyle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
