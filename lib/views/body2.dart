import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/todo_cub_dart_cubit.dart';
import '../models/user_model.dart';
import '../service/user_services.dart';

class body2 extends StatefulWidget {
  const body2({Key? key}) : super(key: key);

  @override
  State<body2> createState() => _body2State();
}

class _body2State extends State<body2> {
  //List <Welcome>  WelcomeList= [];
  //bool isLoading = true;

  //getMyTodos() async{
   // WelcomeList = await todos().getTodos();
    //isLoading =false;

   // setState(() {});

  //}
  //@override
  //void initState(){
   // super.initState();
    //getMyTodos();
  //}
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => TodoCubDartCubit(),
      child: BlocConsumer<TodoCubDartCubit,TodoCubDartState>(
        builder: (context, state) {
          if (state is TodoCubDartLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is TodoCubDartError) {
            return Center(
              child: Text("Error"),
            );
          }
          return ListView.builder(
            itemCount: context.watch<TodoCubDartCubit>().WelcomeList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(context.watch<TodoCubDartCubit>().WelcomeList[index].title ?? "--"),
                //subtitle: Text(context.watch<TodoCubDartCubit>().WelcomeList[index].completed ?? "--"),
                trailing: Icon(Icons.person),
                leading: Text("${index + 1}"),
              );
            },
          );
        },
        listener: (context, state) {},
      ),
    );
  }

}






