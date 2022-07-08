import 'package:flutter/material.dart';
import 'package:open_sooq/utils/constants/all_constants.dart';
import 'package:open_sooq/views/screens/chat/chat_bloc.dart';

class ChatSearchBar extends StatelessWidget {
  final ChatBloc chatBloc;

  const ChatSearchBar(this.chatBloc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      duration: const Duration(milliseconds: 800),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: chatBloc.searchController,
          cursorColor: Colors.black,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey[300]!),
            border: InputBorder.none,
            fillColor: AppColors.lightBackgroundColor,
            filled: true,
            hintText: "Search in your chats...",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey[200]!),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey[200]!),
              borderRadius: BorderRadius.circular(20.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.red[200]!),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
