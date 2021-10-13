import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.child, required this.enabled, this.onPressed}) : super(key: key);

  final Widget child;
  final bool enabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(double.infinity, 7.h),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) => Colors.white),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return Theme.of(context).colorScheme.primary.withOpacity(0.5);
            }
            return Theme.of(context).colorScheme.primary;
          },
        ),
      ),
      child: child,
    );
  }
}
