part of 'work_bloc.dart';

sealed class WorkEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class WorkFetched extends WorkEvent {}
