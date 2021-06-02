import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  Todo(DocumentSnapshot doc) {
    this.documentReference = doc.reference;

    final data = doc.data() as Map<String, Object>;

    this.title = data['title'];

    final Timestamp timestamp = data['createdAt'];
    this.createdAt = timestamp.toDate();
  }

  String title;
  DateTime createdAt;
  bool isDone = false;
  DocumentReference documentReference;
}
