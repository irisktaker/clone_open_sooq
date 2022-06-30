import 'package:flutter/material.dart';
import 'package:open_sooq/views/screens/chat/chat_bloc.dart';
import 'package:open_sooq/views/screens/chat/widget/build_search.dart';
import 'package:open_sooq/views/screens/chat/widget/chats_view.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final ChatBloc _chatBloc = ChatBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          BuildCustomSearch(_chatBloc),
          ChatView(_chatBloc),
        ],
      ),
    );
  }
}
