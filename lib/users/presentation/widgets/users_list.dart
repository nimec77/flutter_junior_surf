import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_junior_surf/app/constants.dart';
import 'package:flutter_junior_surf/l10n/l10n.dart';
import 'package:flutter_junior_surf/login/presentation/blocs/auth_bloc.dart';
import 'package:flutter_junior_surf/users/domain/entities/user.dart';
import 'package:flutter_junior_surf/users/presentation/widgets/user_title.dart';
import 'package:sizer/sizer.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key, required this.authBloc, required this.users}) : super(key: key);

  final AuthBloc authBloc;
  final Iterable<User> users;

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final _scrollController = ScrollController();
  late final double _basePadding;
  late final double _expandedHeight;
  late final double _toolbarHeight;
  double _collapsedPadding = 100;
  double _titlePadding = 15;

  @override
  void initState() {
    _basePadding = 4.w;
    _titlePadding = _basePadding;
    _expandedHeight = 15.h;
    _toolbarHeight = AppBar().preferredSize.height;
    _scrollController.addListener(() => setState(() {
          _titlePadding = _horizontalTitlePadding;
        }));
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      final l10n = context.l10n;
      final size = MediaQuery.of(context).size;
      _collapsedPadding = (size.width - _textWidth(l10n.usersPageTitle)) / 2 - _basePadding - 1;
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  double get _horizontalTitlePadding {
    if (_scrollController.hasClients) {
      return math.min(_basePadding + _collapsedPadding,
          _basePadding + (_collapsedPadding * _scrollController.offset) / (_expandedHeight - _toolbarHeight));
    }

    return _basePadding;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                onPressed: () => widget.authBloc.add(const AuthEvent.logout()),
                icon: const Icon(Icons.exit_to_app),
                color: Colors.black,
                tooltip: l10n.logoutButtonTooltip,
              ),
            ],
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: _expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(vertical: 16),
              collapseMode: CollapseMode.pin,
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: _titlePadding),
                child: Text(l10n.usersPageTitle, style: kTitleTextStyle),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return UserTitle(user: widget.users.elementAt(index));
              },
              childCount: widget.users.length,
            ),
          ),
        ],
      ),
    );
  }

  double _textWidth(String text) {
    final textPainter =
        TextPainter(text: TextSpan(text: text, style: kTitleTextStyle), maxLines: 1, textDirection: TextDirection.ltr)
          ..layout();
    return textPainter.width;
  }
}
