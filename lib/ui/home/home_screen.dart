import 'package:flutter/material.dart';
import 'package:todo/ui/home/settings/Settings_Tab.dart';
import 'package:todo/ui/home/tasks_list/Tasks_List_Tab.dart';

import 'Add_Task_Sheet.dart';

class HomeScreen extends StatefulWidget{
  static const String ROUTE_NAME='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor:Theme.of(context).colorScheme.secondary,
     appBar: AppBar(
       title: Text('Todo',
       style: Theme.of(context).textTheme.headline1,
       ),
     ),

     bottomNavigationBar: BottomAppBar(
       shape: CircularNotchedRectangle(),
       notchMargin: 8,
       child: BottomNavigationBar(
         currentIndex: currentIndex,
         onTap: (index){
           currentIndex=index;
           setState(() {

           });
         },
         elevation: 0,
         backgroundColor: Colors.transparent,
         items: [
           BottomNavigationBarItem(icon:Icon(Icons.list) ,label: ''),
           BottomNavigationBarItem(icon:Icon(Icons.settings) ,label: ''),
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         showAddTaskBottomSheet();
       },
       shape: StadiumBorder(
         side: BorderSide(
           color: Theme.of(context).colorScheme.onPrimary,
           width: 4,
         )
       ),
       child: Icon(Icons.add),
     ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     body: tabs[currentIndex],
   );
  }
  List <Widget> tabs=[
    TasksListTab(),
    SettingsTab(),
  ];

  void showAddTaskBottomSheet() {
    showModalBottomSheet(context: context, builder:(buildContext){
      return AddTaskBottonSheet();
    });
  }
}