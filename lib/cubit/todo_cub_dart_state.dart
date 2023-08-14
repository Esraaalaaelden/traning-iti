part of 'todo_cub_dart_cubit.dart';

@immutable
abstract class TodoCubDartState {}

class TodoCubDartInitial extends TodoCubDartState {}

class TodoCubDartLoading extends TodoCubDartState {}

class TodoCubDartSuccess extends TodoCubDartState {}

class TodoCubDartError extends   TodoCubDartState {}

