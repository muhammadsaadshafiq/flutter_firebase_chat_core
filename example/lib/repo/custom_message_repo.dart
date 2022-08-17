import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/custom_message.dart';

class CustomMessageRepo {
  static CustomMessageRepo instance = CustomMessageRepo();

  final CollectionReference _rooms =
      FirebaseFirestore.instance.collection('rooms');

  //get stream of CustomMessage
  Stream<List<CustomMessage>> getMessages(String roomId) =>
      _rooms.doc(roomId).collection('messages').snapshots().map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => CustomMessage.fromJson(doc.data()),
                )
                .toList(),
          );
}
