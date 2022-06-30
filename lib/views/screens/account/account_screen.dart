import 'package:flutter/material.dart';

import 'package:open_sooq/views/screens/account/widgets/account_header_view.dart';
import 'package:open_sooq/views/screens/account/widgets/follow_us_view.dart';
import 'package:open_sooq/views/screens/account/widgets/options_list_view.dart';
import 'account_bloc.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);
  final _bloc = AccountBloc();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const AccountHeaderView(),
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              OptionsListView(_bloc.list1, () => _bloc.list1),
              OptionsListView(_bloc.list2, () => _bloc.list2),
              OptionsListView(_bloc.list3, () => _bloc.list3),
              OptionsListView(_bloc.list4, () => _bloc.list4),
              OptionsListView(_bloc.list5, () => _bloc.list5),
              OptionsListView(_bloc.list6, () => _bloc.list6),
              OptionsListView(_bloc.list7, () => _bloc.list7),
              OptionsListView(_bloc.list8, () => _bloc.list8),
              OptionsListView(_bloc.list9, () => _bloc.list9),
              const FollowUsView(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
