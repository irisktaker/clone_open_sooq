import 'package:cloud_firestore/cloud_firestore.dart';

class ContactChatModel {
  final String userID;
  String avatar;
  String username;
  String chatDate;
  String lastMessage;
  String firstItemPhoto;
  String itemTitle;
  String date;
  ContactChatModel(
      {required this.userID,
      required this.avatar,
      required this.username,
      required this.chatDate,
      required this.lastMessage,
      required this.firstItemPhoto,
      required this.itemTitle,
      required this.date});

  factory ContactChatModel.fromDocuments(DocumentSnapshot documentSnapshot) {
    String userID = documentSnapshot.get("userID");
    String avatar = documentSnapshot.get("avatar");
    String username = documentSnapshot.get("username");
    String chatDate = documentSnapshot.get("chatDate");
    String lastMessage = documentSnapshot.get("lastMessage");
    String firstItemPhoto = documentSnapshot.get("firstItemPhoto");
    String itemTitle = documentSnapshot.get("itemTitle");
    String date = documentSnapshot.get("date");

    return ContactChatModel(
        userID: userID,
        avatar: avatar,
        username: username,
        chatDate: chatDate,
        lastMessage: lastMessage,
        firstItemPhoto: firstItemPhoto,
        itemTitle: itemTitle,
        date: date);
  }
}
