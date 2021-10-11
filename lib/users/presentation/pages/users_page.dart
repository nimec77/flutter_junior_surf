import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:sizer/sizer.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key, required this.authBloc}) : super(key: key);

  final AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: 15.h,
            flexibleSpace: const FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              title: Text(
                'Пользователи',
                style: TextStyle(color: Colors.black),
              ),
            ),
            onStretchTrigger: () async {
              debugPrint('1');
            },
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
