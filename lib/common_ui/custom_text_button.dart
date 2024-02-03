import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final String text;

  const CustomTextButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
          width: double.maxFinite,
          height: 50.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(125, 35, 224, 1),
              borderRadius: BorderRadius.circular(50.0)),
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )),
    );
  }
}
