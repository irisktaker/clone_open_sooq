import 'package:flutter/material.dart';
import 'package:open_sooq/views/screens/chat/chat_bloc.dart';

class ChatView extends StatelessWidget {
  final ChatBloc chatBloc;

  const ChatView(this.chatBloc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 23),
        separatorBuilder: (BuildContext ctx, int i) => const Divider(
          height: 1,
        ),
        itemBuilder: (BuildContext ctx, int i) {
          return Container(
            padding: const EdgeInsets.all(8.0),
            // margin: EdgeInsets.only(bottom: i == 9 ? 23 : 0),
            color: Colors.white,
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 46,
                      backgroundColor: Colors.grey[100],
                    ),
                    const Positioned(
                      bottom: 4,
                      right: 6,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "User Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "10-06-2022",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "Yes available",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                          ),
                          const SizedBox(width: 8),
                          Text("Item Full Title")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
