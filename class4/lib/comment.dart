import 'dart:convert';

class Comment {
  int postId;
  int id;
  //String email;
  String name;
  String body;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.body,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      body: json['body'],
    );
  }

  @override
  String toString() {
    return '''
    postId: $postId
    id: $id
    name: $name
    body: $body
    ''';
  }
}
