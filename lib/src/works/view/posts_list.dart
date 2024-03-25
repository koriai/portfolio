import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/work_bloc.dart';
import '../posts.dart';

class WorksList extends StatefulWidget {
  const WorksList({super.key});

  @override
  State<WorksList> createState() => _WorksListState();
}

class _WorksListState extends State<WorksList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkBloc, WorkState>(
      builder: (context, state) {
        switch (state.status) {
          case WorkStatus.failure:
            return const Center(child: Text('failed to fetch works'));
          case WorkStatus.success:
            if (state.works.isEmpty) {
              return const Center(child: Text('no works'));
            }
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.works.length
                    ? const BottomLoader()
                    : PostListItem(work: state.works[index]);
              },
              itemCount: state.hasReachedMax
                  ? state.works.length
                  : state.works.length + 1,
              controller: _scrollController,
            );
          case WorkStatus.initial:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<WorkBloc>().add(WorkFetched());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
