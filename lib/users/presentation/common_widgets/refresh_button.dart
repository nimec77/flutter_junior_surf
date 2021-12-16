import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RefreshButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const RefreshButton({required this.text, this.onPressed, Key? key}) : super(key: key);

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
