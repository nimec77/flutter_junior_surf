import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:flutter_junior_surf/users/presentation/constants.dart';
import 'package:sizer/sizer.dart';

class UserTitle extends StatelessWidget {
  const UserTitle({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.8.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Image.asset(kUserIcon),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.username,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                user.email,
                style: TextStyle(
                  fontSize: 11.sp,
                  color: Colors.grey,
                ),
              ),
              Text(
                user.companyName,
                style: TextStyle(
                  fontSize: 11.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
