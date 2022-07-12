import 'package:calle_de_timberos/models/dance_class.dart';
import 'package:calle_de_timberos/models/location.dart';

import 'models/party.dart';

List<Party> PARTIES = [
  Party(
      name: 'Friday Party',
      venue: 'Friday venue',
      additionalInfo: 'Introductory Party',
      address: 'some address 1',
      location: 'some location 1'
  ),
  Party(
      name: 'Saturday Party',
      venue: 'Saturday venue',
      additionalInfo: 'Main Party + Concert',
      address: 'some address 2',
      location: 'some location 2'
  ),
  Party(
      name: 'Sunday Party',
      venue: 'Sunday venue',
      additionalInfo: 'Goodbye Party',
      address: 'some address 3',
      location: 'some location 3'
  )
];

List<Location> LOCATIONS = [
  Location(
      name: 'Classes place',
      additionalInfo: 'this is the classes place',
      address: 'classes place address',
      location: 'classes place location'
  ),
  Location(
      name: 'Hotel',
      additionalInfo: 'this is the Hotel',
      address: 'Hotel address',
      location: 'Hotel location'
  )
];
// TODO add locations: parties, classes, hotel

List<ClassesBlock> SATURDAY_CLASSES = [
  ClassesBlock(
      day: Day.SATURDAY,
      startingHour: 10,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      day: Day.SATURDAY,
      startingHour: 11,
      classesIds: SAT_SECOND
  ),
  ClassesBlock(
      day: Day.SATURDAY,
      startingHour: 12,
      classesIds: SAT_THIRD
  ),
  ClassesBlock(
      day: Day.SATURDAY,
      startingHour: 14,
      classesIds: SAT_FOURTH
  ),
  ClassesBlock(
      day: Day.SATURDAY,
      startingHour: 15,
      classesIds: SAT_FIFTH
  ),
  ClassesBlock(
      day: Day.SATURDAY,
      startingHour: 16,
      classesIds: SAT_SIXTH
  ),
];

List<ClassesBlock> SUNDAY_CLASSES = [

  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 10,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 11,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 12,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 14,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 15,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 16,
      classesIds: SAT_FIRST
  ),
];

List<int> SAT_FIRST = [1, 2, 3, 4];

List<int> SAT_SECOND = [1, 2, 3, 4

];

List<int> SAT_THIRD = [1, 2, 3, 4

];

List<int> SAT_FOURTH = [1, 2, 3, 4

];

List<int> SAT_FIFTH = [1, 2, 3, 4
];

List<int> SAT_SIXTH = [1, 2, 3, 4

];


List<int> SUN_FIRST = [1, 2, 3, 4

];

List<int> SUN_SECOND = [

];

List<int> SUN_THIRD = [

];

List<int> SUN_FOURTH = [

];

List<int> SUN_FIFTH = [

];

List<int> SUN_SIXTH = [

];

List<DanceClass> DANCE_CLASSES = [
  DanceClass(
      id: 1,
      name: 'Salsa',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 2,
      name: 'Brazylijskie Pośladki',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 3,
      name: 'Tango Bailando',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 4,
      name: 'Leżing con kanapa',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
];