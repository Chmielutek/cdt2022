import 'package:flutter/material.dart';

import '../models/dance_class.dart';
import '../widgets/main_drawer.dart';
import '../calle_data.dart';
import 'class_day_screen.dart';

class ClassesScreen extends StatelessWidget {
  static String routeName = '/classes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Center(
        child: ListView(
          children: [
            ClassDayCard('Saturday', SATURDAY_CLASSES),
            ClassDayCard('Sunday', SUNDAY_CLASSES)
          ],
        ),
      ),
    );
  }
}

class ClassDayCard extends StatelessWidget {
  String day;
  List<ClassesBlock> classesBlock;

  ClassDayCard(this.day, this.classesBlock);

  void selectDay(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
        ClassDayScreen.routeName,
        arguments: {
          'classesBlock': classesBlock,
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDay(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          day,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.withOpacity(0.7), Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

