import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(60.w, 5.4.h),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12.sp),
      ),
    );
  }
}