import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/service/user_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/todo_cub_dart_cubit.dart';
import '../models/user_model.dart';
import '../service/user_services.dart';

import '../cubit/todo_cub_dart_cubit.dart';
import '../models/user_model.dart';
part 'todo_cub_dart_state.dart';

class TodoCubDartCubit extends Cubit<TodoCubDartState> {
  TodoCubDartCubit() : super(TodoCubDartInitial()){

  getMyTodos();
}

  List <Welcome>  WelcomeList= [];
  getMyTodos() async {
    try {
      emit( TodoCubDartLoading());
      WelcomeList  = await  todos().getTodos();
      emit(TodoCubDartSuccess());
    } catch (e) {
      emit(TodoCubDartError());
    }
  }
}





