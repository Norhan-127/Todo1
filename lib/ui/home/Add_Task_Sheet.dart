import 'package:flutter/material.dart';

class AddTaskBottonSheet extends StatelessWidget {
  const AddTaskBottonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.black),),
          Form(child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'title',
              ),
            ),
            TextFormField(
              minLines: 4,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'description',
              ),
            ),
                SizedBox(height: 12,),
                Text('Task Date'),
                SizedBox(height: 8,),
                Text('12/7/2002',textAlign: TextAlign.center,),
                SizedBox(height: 12,),
          ]),
          ),
          ElevatedButton(onPressed: (){},child: Text('Add Task'),)
        ],
      ),
    );
  }
}
