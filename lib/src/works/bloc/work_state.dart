part of 'work_bloc.dart';

enum WorkStatus { initial, success, failure }

final class WorkState extends Equatable {
  const WorkState({
    this.status = WorkStatus.initial,
    this.works = const <Work>[],
    this.hasReachedMax = false,
  });

  final WorkStatus status;
  final List<Work> works;
  final bool hasReachedMax;

  WorkState copyWith({
    WorkStatus? status,
    List<Work>? works,
    bool? hasReachedMax,
  }) {
    return WorkState(
      status: status ?? this.status,
      works: works ?? this.works,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''WorkState { status: $status, hasReachedMax: $hasReachedMax, works: ${works.length} }''';
  }

  @override
  List<Object> get props => [status, works, hasReachedMax];
}
