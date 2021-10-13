import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/users/presentation/common_widgets/refresh_button.dart';
import 'package:flutter_junior_surf/users/presentation/constants.dart';
import 'package:sizer/sizer.dart';

class UsersFailure extends StatelessWidget {
  const UsersFailure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kWarringIcon),
            SizedBox(height: 3.2.h),
            Text('Не удалось загрузить информацию', style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500)),
            SizedBox(height: 3.2.h),
            const RefreshButton(),
          ],
        ),
      ),
    );
  }
}
