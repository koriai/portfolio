import 'package:flutter/material.dart';

import '../models/models.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({required this.work, super.key});

  final Work work;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('${work.id}', style: textTheme.bodySmall),
        title: Text(work.title),
        isThreeLine: true,
        subtitle: Text(work.body),
        dense: true,
      ),
    );
  }
}
