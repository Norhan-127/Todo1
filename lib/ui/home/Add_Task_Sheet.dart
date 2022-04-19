import 'package:flutter/material.dart';

class AddTaskBottonSheet extends StatelessWidget {
  const AddTaskBottonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Add Task',style: Theme.of(context).textTheme.bodyText1,),
          Form(child:Column(children: [
            TextFormField(),
          ],))
        ],
      ),
    );
  }
}
