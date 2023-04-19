import 'package:cloud_firestore/cloud_firestore.dart';

class WalletRepository {

  late final FirebaseFirestore storage;

  Future<String> getCurrentWallet() async {
    storage = FirebaseFirestore.instance;
    final doc = await storage.collection("user").get().then((event) {
      return event.docs.last.data();
    });
    return doc.toString();
  }

  Future<void> addWalletChanges() async {
    final user = <String, dynamic>{
      "first": "Alan",
      "middle": "Mathison",
      "last": "Turing",
      "born": 1912
    };
    // Add a new document with a generated ID
    storage.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
  }
}