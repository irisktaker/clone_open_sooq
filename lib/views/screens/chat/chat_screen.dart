import 'package:flutter/material.dart';
import 'package:open_sooq/views/screens/chat/chat_bloc.dart';
import 'package:open_sooq/views/screens/chat/widget/chat_search_bar.dart';
import 'package:open_sooq/views/screens/chat/widget/chats_view.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  final ChatBloc _chatBloc = ChatBloc();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ChatSearchBar(_chatBloc),
            ChatView(_chatBloc),
          ],
        ),
      ),
    );
  }
}
