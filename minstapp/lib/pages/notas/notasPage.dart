// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:minstapp/widgets/default/scaffold.dart';

class Notaspage extends StatelessWidget {
  const Notaspage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultScaffold(
        title: 'NOTAS',
        body: Container(
          padding: const EdgeInsets.all(20.0),
          
        ),
      ),
    );
  }
}