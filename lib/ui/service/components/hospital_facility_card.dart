import 'package:flutter/material.dart';
import 'package:heaven_canceller_hospital/shared/color.dart';
import 'package:heaven_canceller_hospital/shared/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HospitalFacilityCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function onTap;

  HospitalFacilityCard({
    this.title,
    this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: 132.r,
            height: 180.r,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
          ),
          Container(
            width: 132.r,
            height: 180.r,
            padding: EdgeInsets.all(13.r),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [
                  blackColor.withOpacity(1),
                  blackColor.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: mediumBaseFont.copyWith(
                  color: baseColor,
                  fontSize: 13.5.sp,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}