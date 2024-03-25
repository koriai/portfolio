import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../bloc/work_bloc.dart';
import '../posts.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => WorkBloc(httpClient: http.Client())..add(WorkFetched()),
        child: const WorksList(),
      ),
    );
  }
}
