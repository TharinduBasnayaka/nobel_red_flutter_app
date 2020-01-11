import "package:cloud_firestore/cloud_firestore.dart";

final databaseReference = Firestore.instance;

void getData() {
  databaseReference
      .collection("posts")
      .document("blood_needed_posts")
      .collection("blood_neeeded_posts")
      .getDocuments()
      .then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) => print('${f.data}}'));
  });
}
