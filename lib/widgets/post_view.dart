import 'package:flutter/material.dart';
import 'package:motogp_trying_flutter/post.dart';
import '../post.dart';

class PostView extends StatelessWidget {
  const PostView({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image(image: AssetImage(post.picture)),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            post.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        Text(
          post.description,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const Divider(height: 20, color: Colors.white)
      ],
    );
  }
}
