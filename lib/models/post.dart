import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post(
      {required this.uid,
      required this.postId,
      required this.username,
      required this.datePublished,
      required this.postUrl,
      required this.profImage,
      required this.likes,
      required this.description});

  Map<String, dynamic> toJson() => {
        "username": username,
        "description": description,
        "uid": uid,
        "postUrl": postUrl,
        "profImage": profImage,
        "postId": postId,
        "likes": likes,
        "datePublished": datePublished
      };

  static Post fromsnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
      username: snapshot['username'],
      description: snapshot['description'],
      uid: snapshot['uid'],
      postUrl: snapshot['postUrl'],
      datePublished: snapshot['datePublished'],
      postId: snapshot['postId'],
      likes: snapshot['likes'],
      profImage: snapshot['profImage'],
    );
  }
}
