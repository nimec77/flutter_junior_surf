import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginButton extends StatelessWidget {
  final Widget child;
  final bool enabled;
  final VoidCallback? onPressed;

  const LoginButton({required this.child, required this.enabled, this.onPressed, Key? key}) : super(key: key);

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
