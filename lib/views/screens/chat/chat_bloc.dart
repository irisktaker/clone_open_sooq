import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:open_sooq/data/models/chats_model.dart';

class ChatBloc {
  TextEditingController searchController = TextEditingController();
  // create a collection on firebase
  final CollectionReference chatsUserCollection =
      FirebaseFirestore.instance.collection("chatsUsers");

  // CRUD Create Read Update Delete

  List<ContactChatModel> contactChatModelList = [];

  void fillContactChatModelList(
      List<QueryDocumentSnapshot<Object?>> firebaseList) {
    for (var firebaseItem in firebaseList) {
      contactChatModelList.add(ContactChatModel.fromDocuments(firebaseItem));
    }
  }
}
