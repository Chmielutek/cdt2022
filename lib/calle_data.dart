import '../models/dance_class.dart';
import '../models/location.dart';

List<Location> LOCATIONS = [
  Location(
      id: '1',
      name: 'Friday Party',
      venue: 'Friday venue',
      additionalInfo: 'Introductory Party',
      startTime: '10PM',
      address: 'some address 1',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017),
      pictureUrl: 'assets/images/a2.png'
  ),
  Location(
      id: '2',
      name: 'Saturday Party',
      venue: 'Saturday venue',
      additionalInfo: 'Main Party + Concert',
      startTime: '10PM',
      address: 'some address 2',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017),
      pictureUrl: 'assets/images/a2.png'
  ),
  Location(
      id: '3',
      name: 'Sunday Party',
      venue: 'Sunday venue',
      additionalInfo: 'Goodbye Party',
      startTime: '10PM',
      address: 'some address 3',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017),
      pictureUrl: 'assets/images/a2.png'
  ),
  Location(
      id: '4',
      name: 'Classes place',
      venue: 'Calle School',
      additionalInfo: 'this is the classes place',
      address: 'classes place address',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017),
      pictureUrl: 'assets/images/a2.png'
  ),
  Location(
      id: '5',
      name: 'Hotel',
      venue: 'Calle Hotel',
      additionalInfo: 'this is the Hotel',
      address: 'Hotel address',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017),
      pictureUrl: 'assets/images/a2.png'
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
      classesIds: SUN_FIRST
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 11,
      classesIds: SUN_SECOND
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 12,
      classesIds: SUN_THIRD
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 14,
      classesIds: SUN_FOURTH
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 15,
      classesIds: SUN_FIFTH
  ),
  ClassesBlock(
      day: Day.SUNDAY,
      startingHour: 16,
      classesIds: SUN_SIXTH
  ),
];

List<int> SAT_FIRST = [1, 2, 3, 4];

List<int> SAT_SECOND = [5,6,7,8];

List<int> SAT_THIRD = [9,10,11,12];

List<int> SAT_FOURTH = [13,14,15,16];

List<int> SAT_FIFTH = [17,18,19,20];

List<int> SAT_SIXTH = [21,22,23,24];


List<int> SUN_FIRST = [25,26,27,28];

List<int> SUN_SECOND = [29,30,31,32];

List<int> SUN_THIRD = [33,34,35,36];

List<int> SUN_FOURTH = [37,38,39,40];

List<int> SUN_FIFTH = [41,42,43,44];

List<int> SUN_SIXTH = [45,46,47,48];

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
  DanceClass(
      id: 5,
      name: 'test-2-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 6,
      name: 'test-2-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 7,
      name: 'test-2-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 8,
      name: 'test-2-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 9,
      name: 'test-3-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 10,
      name: 'test-3-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 11,
      name: 'test-3-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 12,
      name: 'test-3-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 13,
      name: 'test-4-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 14,
      name: 'test-4-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 15,
      name: 'test-4-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 16,
      name: 'test-4-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 17,
      name: 'test-5-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 18,
      name: 'test-5-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 19,
      name: 'test-5-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 20,
      name: 'test-5-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 21,
      name: 'test-6-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 22,
      name: 'test-6-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 23,
      name: 'test-6-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 24,
      name: 'test-6-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 25,
      name: 'test-7-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 26,
      name: 'test-7-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 27,
      name: 'test-7-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 28,
      name: 'test-7-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 29,
      name: 'test-8-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 30,
      name: 'test-8-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 31,
      name: 'test-8-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 32,
      name: 'test-8-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 33,
      name: 'test-9-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 34,
      name: 'test-9-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 35,
      name: 'test-9-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 36,
      name: 'test-9-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 37,
      name: 'test-10-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 38,
      name: 'test-10-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 39,
      name: 'test-10-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 40,
      name: 'test-10-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 41,
      name: 'test-11-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 42,
      name: 'test-11-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 43,
      name: 'test-11-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 44,
      name: 'test-11-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 45,
      name: 'test-12-1',
      instructors: 'Marta i Kijek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 46,
      name: 'test-12-2',
      instructors: 'Loco',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 47,
      name: 'test-12-3',
      instructors: 'Misiania',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 48,
      name: 'test-12-4',
      instructors: 'Chmielu',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.D
  ),
];
