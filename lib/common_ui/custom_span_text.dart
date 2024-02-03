import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSpanText extends StatelessWidget {
  final String normalText;
  final String boldText;
  const CustomSpanText({
    super.key,
    required this.normalText,
    required this.boldText,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: normalText,
            style: TextStyle(
                color: const Color.fromRGBO(156, 162, 170, 1),
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14.sp)),
        TextSpan(
          text: boldText,
          style: TextStyle(
              color: const Color.fromRGBO(156, 162, 170, 1),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 14.sp),
        ),
      ]),
    );
  }
}
