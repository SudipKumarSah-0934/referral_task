import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? textColor;
  const CustomText({
    super.key,
    required this.text,
    this.size,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: size ?? 14.sp,
        fontWeight: FontWeight.w700,
        color: textColor ?? Colors.black,
      ),
    );
  }
}
