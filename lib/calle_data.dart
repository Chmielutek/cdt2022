import '../models/dance_class.dart';
import '../models/location.dart';

List<Location> LOCATIONS = const [
  Location(
      id: '1',
      name: 'Friday Party',
      venue: 'A2 - centrum koncertowe',
      additionalInfo: 'Introductory Party',
      startTime: '10PM',
      address: 'Góralska 5\n53-610 Wrocław',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017, '4252+CP Wrocław'),
      pictureUrl: 'assets/images/a2.png',
      previewUrl: 'assets/images/a2_location_preview.png',
      streetViewUrl: 'assets/images/a2_street_view.png'
  ),
  Location(
      id: '2',
      name: 'Saturday Party',
      venue: 'A2 - centrum koncertowe',
      additionalInfo: 'Main Party + Concert',
      startTime: '10PM',
      address: 'Góralska 5\n53-610 Wrocław',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017, '4252+CP Wrocław'),
      pictureUrl: 'assets/images/a2.png',
      previewUrl: 'assets/images/a2_location_preview.png',
      streetViewUrl: 'assets/images/a2_street_view.png'
  ),
  Location(
      id: '3',
      name: 'Sunday Party',
      venue: 'Stary Klasztor',
      additionalInfo: 'Goodbye Party',
      startTime: '10PM',
      address: 'Jana Ewangelisty Purkyniego 1\n50-155 Wrocław',
      coordinates: Coordinates(51.11047722059544, 17.039336615339213, '426Q+5PW Wrocław'),
      pictureUrl: 'assets/images/klasztor.png',
      previewUrl: 'assets/images/klasztor_location_preview.png',
      streetViewUrl: 'assets/images/klasztor_street_view.png'
  ),
  Location(
      id: '4',
      name: 'Classes',
      venue: 'Calle School',
      additionalInfo: 'Calle School',
      address: 'Nowa 14-16\nWrocław',
      coordinates: Coordinates(51.10681101519131, 17.039852214118902, '424Q+PWH Wrocław'),
      pictureUrl: 'assets/images/school.png',
      previewUrl: 'assets/images/school_location_preview.png',
      streetViewUrl: 'assets/images/school_street_view.png'
  ),
  Location(
      id: '5',
      name: 'Hotel',
      venue: 'Hotel Premiere Classe',
      additionalInfo: 'Calle Hotel',
      address: 'Ślężna 28\n53-302 Wrocław',
      coordinates: Coordinates(51.093877881930524, 17.03137141460592, '32VJ+HG5 Wrocław'),
      pictureUrl: 'assets/images/hotel.png',
      previewUrl: 'assets/images/hotel_location_preview.png',
      streetViewUrl: 'assets/images/hotel_street_view.png'
  )
];

List<ClassesBlock> SATURDAY_CLASSES = const [
  ClassesBlock(
      id: 1,
      day: Day.SATURDAY,
      startingHour: 10,
      classesIds: SAT_FIRST
  ),
  ClassesBlock(
      id: 2,
      day: Day.SATURDAY,
      startingHour: 11,
      classesIds: SAT_SECOND
  ),
  ClassesBlock(
      id: 3,
      day: Day.SATURDAY,
      startingHour: 12,
      classesIds: SAT_THIRD
  ),
  ClassesBlock(
      id: 4,
      day: Day.SATURDAY,
      startingHour: 14,
      classesIds: SAT_FOURTH
  ),
  ClassesBlock(
      id: 5,
      day: Day.SATURDAY,
      startingHour: 15,
      classesIds: SAT_FIFTH
  ),
  ClassesBlock(
      id: 6,
      day: Day.SATURDAY,
      startingHour: 16,
      classesIds: SAT_SIXTH
  ),
];

List<ClassesBlock> SUNDAY_CLASSES = const [

  ClassesBlock(
      id: 7,
      day: Day.SUNDAY,
      startingHour: 10,
      classesIds: SUN_FIRST
  ),
  ClassesBlock(
      id: 8,
      day: Day.SUNDAY,
      startingHour: 11,
      classesIds: SUN_SECOND
  ),
  ClassesBlock(
      id: 9,
      day: Day.SUNDAY,
      startingHour: 12,
      classesIds: SUN_THIRD
  ),
  ClassesBlock(
      id: 10,
      day: Day.SUNDAY,
      startingHour: 14,
      classesIds: SUN_FOURTH
  ),
  ClassesBlock(
      id: 11,
      day: Day.SUNDAY,
      startingHour: 15,
      classesIds: SUN_FIFTH
  ),
  ClassesBlock(
      id: 12,
      day: Day.SUNDAY,
      startingHour: 16,
      classesIds: SUN_SIXTH
  ),
];

const List<int> SAT_FIRST = [1, 2, 3, 4];

const List<int> SAT_SECOND = [5,6,7,8];

const List<int> SAT_THIRD = [9,10,11,12];

const List<int> SAT_FOURTH = [13,14,15,16];

const List<int> SAT_FIFTH = [17,18,19,20];

const List<int> SAT_SIXTH = [21,22,23,24];


const List<int> SUN_FIRST = [25,26,27,28];

const List<int> SUN_SECOND = [29,30,31,32];

const List<int> SUN_THIRD = [33,34,35,36];

const List<int> SUN_FOURTH = [37,38,39,40];

const List<int> SUN_FIFTH = [41,42,43,44];

const List<int> SUN_SIXTH = [45,46,47,48];

const List<DanceClass> DANCE_CLASSES = [
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
