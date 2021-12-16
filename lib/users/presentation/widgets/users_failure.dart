import 'package:flutter/material.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/users/presentation/blocs/users_bloc.dart';
import 'package:flutter_junior_surf/users/presentation/common_widgets/refresh_button.dart';
import 'package:flutter_junior_surf/users/presentation/constants.dart';
import 'package:sizer/sizer.dart';

class UsersFailure extends StatelessWidget {
  final UsersBloc usersBloc;

  const UsersFailure({required this.usersBloc, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kWarringIcon),
            SizedBox(height: 3.2.h),
            Text(
              l10n.usersFailureError,
              key: kUsersFailureErrorKey,
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 3.2.h),
            RefreshButton(
              onPressed: () => usersBloc.add(const UsersEvent.started()),
              text: l10n.refreshButtonText,
            ),
          ],
        ),
      ),
    );
  }
}
