import 'package:flutter/material.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/screens/chat/chat_bloc.dart';

class BuildCustomSearch extends StatelessWidget {
  final ChatBloc chatBloc;

  const BuildCustomSearch(this.chatBloc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        height: 80,
        child: TextField(
          controller: chatBloc.searchController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            fillColor: AppColors.lightBackgroundColor,
            filled: true,
            hintText: "Search",
          ),
        ),
      ),
    );
  }
}
