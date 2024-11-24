// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minstapp/widgets/default/scaffold.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable
class CalendarPage extends StatelessWidget {

  DateTime focusedDay2 = DateTime.now();

  CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultScaffold(
        title: 'CALENDARIO',
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TableCalendar(
                  rowHeight: 40,
                  headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true,),
                  availableGestures: AvailableGestures.all,
                  focusedDay: focusedDay2,
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2090, 12, 31),
                ),
                const SizedBox(height: 16),
                Text("ACTIVIDADES",style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color:  const Color(0xFF023657)),),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("24", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color:  const Color(0xFF023657)),),
                      const SizedBox(width: 16),
                      Text("DOMINGO", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color:  const Color(0xFF023657)),),
                    ],
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}