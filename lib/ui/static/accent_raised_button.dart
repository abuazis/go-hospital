import 'package:flutter/material.dart';
import 'package:heaven_canceller_hospital/shared/color.dart';
import 'package:heaven_canceller_hospital/shared/font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccentRaisedButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final String text;
  final double fontSize;
  final Color fontColor;
  final IconData icon;
  final Function onPressed;

  AccentRaisedButton({
    this.width,
    this.height,
    this.color,
    this.borderRadius,
    this.text,
    this.fontSize,
    this.fontColor = baseColor,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        hoverElevation: 0,
        color: color,
        elevation: 0,
        splashColor: baseColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: (text != null) ? Text(
          text,
          style: mediumBaseFont.copyWith(
            fontSize: fontSize,
            color: fontColor,
          ),
        ) : Icon(
          icon,
          color: baseColor,
          size: 20.r,
        ),
        onPressed: onPressed,
      ),
    );
  }
}