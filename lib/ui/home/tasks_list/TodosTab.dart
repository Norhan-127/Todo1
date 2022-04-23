import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/ui/home/tasks_list/Task_Widget.dart';

class TasksListTab extends StatefulWidget {
  @override
  State<TasksListTab> createState() => _TasksListTabState();
}

class _TasksListTabState extends State<TasksListTab> {
  DateTime selectedDay = DateTime.now();

  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Column(
          children: [
          Container(
          color: Colors.white,
          child: TableCalendar(
            firstDay: DateTime.now().subtract(Duration(days: 365)),
            lastDay: DateTime.now().add(Duration(days: 365)),
            focusedDay: focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                this.selectedDay = selectedDay;
                this.focusedDay =
                    focusedDay; // update `_focusedDay` here as well
              });
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.white,
              ),
              selectedTextStyle:
              TextStyle(color: Theme
                  .of(context)
                  .primaryColor),
              defaultDecoration: BoxDecoration(
                color: Colors.white,
              ),
              holidayDecoration: BoxDecoration(
                color: Colors.white,
              ),
              weekendDecoration: BoxDecoration(
                color: Colors.white,
              ),
              isTodayHighlighted: false,
            ),
            calendarFormat: CalendarFormat.week,
            daysOfWeekHeight: 30,
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle:
              TextStyle(color: Theme
                  .of(context)
                  .colorScheme
                  .onSurface),
              weekendStyle:
              TextStyle(color: Theme
                  .of(context)
                  .colorScheme
                  .onSurface),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            headerVisible: false,
            headerStyle: HeaderStyle(),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
              itemBuilder: (context, index) {
            return TaskWidget();
          }
          ),
        ),
    ]
    )
    );
  }
}
