import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';

import '../models/models.dart';

part 'work_event.dart';
part 'work_state.dart';

const _WorkLimit = 20;
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class WorkBloc extends Bloc<WorkEvent, WorkState> {
  WorkBloc({required this.httpClient}) : super(const WorkState()) {
    on<WorkFetched>(
      _onWorkFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final http.Client httpClient;

  Future<void> _onWorkFetched(
    WorkFetched event,
    Emitter<WorkState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == WorkStatus.initial) {
        final works = await _fetchWorks();
        return emit(
          state.copyWith(
            status: WorkStatus.success,
            works: works,
            hasReachedMax: false,
          ),
        );
      }
      final works = await _fetchWorks(state.works.length);
      works.isEmpty
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(
              state.copyWith(
                status: WorkStatus.success,
                works: List.of(state.works)..addAll(works),
                hasReachedMax: false,
              ),
            );
    } catch (_) {
      emit(state.copyWith(status: WorkStatus.failure));
    }
  }

  Future<List<Work>> _fetchWorks([int startIndex = 0]) async {
    final response = await httpClient.get(
      Uri.https(
        'jsonplaceholder.typicode.com',
        '/works',
        <String, String>{'_start': '$startIndex', '_limit': '$_WorkLimit'},
      ),
    );
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      return body.map((dynamic json) {
        final map = json as Map<String, dynamic>;
        return Work(
          id: map['id'] as int,
          title: map['title'] as String,
          body: map['body'] as String,
        );
      }).toList();
    }
    throw Exception('error fetching works');
  }
}
