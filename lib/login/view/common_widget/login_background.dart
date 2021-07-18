import 'package:flutter/material.dart';

import '../constants.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            width: double.infinity,
            height: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 125, left: 25),
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final leg = size.height / 3;
    path
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height - leg)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
