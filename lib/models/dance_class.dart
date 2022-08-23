class ClassesBlock {
  final int id;
  final Day day;
  final int startingHour;
  final List<int> classesIds;

  const ClassesBlock({required this.id, required this.day, required this.startingHour, required this.classesIds});
}

class DanceClass {
  final int id;
  final String name;
  final String instructors;
  final Difficulty difficulty;
  final ClassRoom classRoom;

  const DanceClass({required this.id, required this.name, required this.instructors, required this.difficulty, required this.classRoom});
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
