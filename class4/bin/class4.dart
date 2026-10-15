import 'package:class4/post.dart';
import 'package:http/http.dart' as http;
import 'package:class4/comment.dart';

import 'dart:convert';

void main(List<String> arguments) async {
  //NOTE: fetch a user
  http.Response response;
  response = await fetchUser(2);

  print(response.statusCode);
  print(response.body);

  //NOTE: fetch a comment
  Comment comment;
  comment = await fetchComment(1);

  print(comment);

  //NOTE: fetch a post
  List<Post> posts;
  posts = await fetchPosts();

  //NOTE: filters for the for loop
  //posts.where((p) => p.title.length < 13)
  //posts.where((p) => p.userId == 1)

  for (Post post in posts.where((p) => p.userId == 1)) {
    print(post);
  }
}

Future<http.Response> fetchUser(int id) async {
  final String uri =
      'https://jsonplaceholder.typicode.com/users/${id.toString().trim()}';

  final response = await http.get(Uri.parse(uri));

  return response;
}

Future<Comment> fetchComment(int id) async {
  Comment comment;
  final String uri =
      'https://jsonplaceholder.typicode.com/comments/${id.toString().trim()}';

  final response = await http.get(Uri.parse(uri));

  comment = Comment.fromJson(jsonDecode(response.body));

  return comment;
}

Future<List<Post>> fetchPosts() async {
  Iterable iterable;
  List<Post> posts;
  final String uri = 'https://jsonplaceholder.typicode.com/posts';

  final response = await http.get(Uri.parse(uri));

  iterable = json.decode(response.body);

  posts = List<Post>.from(iterable.map((p) => Post.fromJson(p)));

  return posts;
}
