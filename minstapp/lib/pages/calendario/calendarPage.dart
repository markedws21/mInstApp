// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/widgets/default/scaffold.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable
class CalendarPage extends StatelessWidget {

  DateTime focusedDay2 = DateTime.now();

  CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: DefaultScaffold(
        title: 'CALENDARIO',
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: TableCalendar(
            rowHeight: 40,
            headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            focusedDay: focusedDay2,
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2090, 12, 31),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return Future.value(false);
  }
  
}