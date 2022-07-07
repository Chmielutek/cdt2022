import 'package:flutter/material.dart';

class ClassesBlock {
  Day day;
  int startingHour;
  List<DanceClass> classes;

  ClassesBlock({required this.day, required this.startingHour, required this.classes});
}

class DanceClass {
  int id;
  String name;
  String instructors;
  Difficulty difficulty;
  ClassRoom classRoom;

  DanceClass({required this.id, required this.name, required this.instructors, required this.difficulty, required this.classRoom});
}

enum Difficulty {
  OPEN, INTERMEDIATE, ADVANCED
}

enum Day {
  FRIDAY, SATURDAY, SUNDAY
}

enum ClassRoom {
  A, B, C, D
}