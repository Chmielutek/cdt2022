import '../models/dance_class.dart';
import '../models/location.dart';

List<Location> LOCATIONS = const [
  Location(
      id: '1',
      name: 'Friday Party 10PM',
      venue: 'A2 - centrum koncertowe',
      additionalInfo: 'Party + Concert 11PM',
      startTime: '10PM',
      address: 'Góralska 5\n53-610 Wrocław',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017, 'A2 centrum koncertowe, Wrocław'),
      pictureUrl: 'assets/images/a2.png',
      previewUrl: 'assets/images/a2_location_preview.png',
      streetViewUrl: 'assets/images/a2_street_view2.png'
  ),
  Location(
      id: '2',
      name: 'Saturday Party 10:30PM',
      venue: 'A2 - centrum koncertowe',
      additionalInfo: 'Main Party + Shows 12AM',
      startTime: '10:30PM',
      address: 'Góralska 5\n53-610 Wrocław',
      coordinates: Coordinates(51.10856310144485, 17.001785511734017, 'A2 centrum koncertowe, Wrocław'),
      pictureUrl: 'assets/images/a2.png',
      previewUrl: 'assets/images/a2_location_preview.png',
      streetViewUrl: 'assets/images/a2_street_view2.png'
  ),
  Location(
      id: '3',
      name: 'Sunday Party 10PM',
      venue: 'Stary Klasztor',
      additionalInfo: 'Goodbye Party',
      startTime: '10PM',
      address: 'Jana Ewangelisty Purkyniego 1\n50-155 Wrocław',
      coordinates: Coordinates(51.11047722059544, 17.039336615339213, 'Stary Klasztor, Wrocław'),
      pictureUrl: 'assets/images/klasztor.png',
      previewUrl: 'assets/images/klasztor_location_preview.png',
      streetViewUrl: 'assets/images/klasztor_street_view.png'
  ),
  Location(
      id: '4',
      name: 'Classes',
      venue: 'Liceum nr 9',
      additionalInfo: 'Calle School',
      address: 'Nowa 14-16\nWrocław',
      coordinates: Coordinates(51.10681101519131, 17.039852214118902, 'Nowa 16, Wrocław'),
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
      coordinates: Coordinates(51.093877881930524, 17.03137141460592, 'Ślężna 28, Wrocław'),
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
      startingHour: 1110,
      classesIds: SAT_SECOND
  ),
  ClassesBlock(
      id: 3,
      day: Day.SATURDAY,
      startingHour: 1220,
      classesIds: SAT_THIRD
  ),
  ClassesBlock(
      id: 13,
      day: Day.SATURDAY,
      startingHour: 1320,
      classesIds: SAT_PHOTO
  ),
  ClassesBlock(
      id: 14,
      day: Day.SATURDAY,
      startingHour: 1340,
      classesIds: SAT_LUNCH
  ),
  ClassesBlock(
      id: 4,
      day: Day.SATURDAY,
      startingHour: 15,
      classesIds: SAT_FOURTH
  ),
  ClassesBlock(
      id: 5,
      day: Day.SATURDAY,
      startingHour: 1610,
      classesIds: SAT_FIFTH
  ),
  ClassesBlock(
      id: 6,
      day: Day.SATURDAY,
      startingHour: 1720,
      classesIds: SAT_SIXTH
  ),
];

List<ClassesBlock> SUNDAY_CLASSES = const [

  ClassesBlock(
      id: 7,
      day: Day.SUNDAY,
      startingHour: 11,
      classesIds: SUN_FIRST
  ),
  ClassesBlock(
      id: 8,
      day: Day.SUNDAY,
      startingHour: 1210,
      classesIds: SUN_SECOND
  ),
  ClassesBlock(
      id: 9,
      day: Day.SUNDAY,
      startingHour: 1320,
      classesIds: SUN_THIRD
  ),
  ClassesBlock(
      id: 14,
      day: Day.SUNDAY,
      startingHour: 1420,
      classesIds: SUN_LUNCH
  ),
  ClassesBlock(
      id: 10,
      day: Day.SUNDAY,
      startingHour: 1530,
      classesIds: SUN_FOURTH
  ),
  ClassesBlock(
      id: 11,
      day: Day.SUNDAY,
      startingHour: 1640,
      classesIds: SUN_FIFTH
  ),
  ClassesBlock(
      id: 12,
      day: Day.SUNDAY,
      startingHour: 1750,
      classesIds: SUN_SIXTH
  ),
];

const List<int> SAT_FIRST = [1, 2, 3, 4];

const List<int> SAT_SECOND = [5,6,7,8];

const List<int> SAT_THIRD = [9,10,11,12];

const List<int> SAT_PHOTO = [49];
const List<int> SAT_LUNCH = [50, 52];

const List<int> SAT_FOURTH = [13,14,15,16];

const List<int> SAT_FIFTH = [17,18,19,20];

const List<int> SAT_SIXTH = [21,22,23,24];


const List<int> SUN_FIRST = [25,26,27,28];

const List<int> SUN_SECOND = [29,30,31,32];

const List<int> SUN_THIRD = [33,34,35,36];

const List<int> SUN_FOURTH = [37,38,39,40];

const List<int> SUN_FIFTH = [41,42,43,44];

const List<int> SUN_SIXTH = [45,46,47,48];
const List<int> SUN_LUNCH = [51];

const List<DanceClass> DANCE_CLASSES = [
  DanceClass(
      id: 1,
      name: 'Salsa Partnerwork',
      instructors: 'Ruggiero & Heidi',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 2,
      name: 'Bodymovement',
      instructors: 'Oliwka',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 3,
      name: 'Ellegua',
      instructors: 'Andy & Yuliet',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 4,
      name: 'Sexy Reggeaton',
      instructors: 'Yenifer',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 5,
      name: 'Timba Partnerwork',
      instructors: 'Andy & Yuliet',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 6,
      name: 'Son con Abanico (Ladies)',
      instructors: 'Ania Seruga',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 7,
      name: 'Chango',
      instructors: 'Jacqueline',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 8,
      name: 'Salsa con Hip Hop',
      instructors: 'Bojana',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 9,
      name: 'Live Music Interpretation',
      instructors: 'Yoandy',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 10,
      name: 'Lady Styling',
      instructors: 'Oliwka',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 11,
      name: 'Men Styling',
      instructors: 'Fredy',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 12,
      name: 'Timba Musicality en Pareja',
      instructors: 'Ania & Jacek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 13,
      name: 'Salsa con Estilo',
      instructors: 'Fredy & Bojana',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 14,
      name: 'Lady Styling',
      instructors: 'Yuliet',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 15,
      name: 'Abakua',
      instructors: 'Andy',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 16,
      name: 'Salsa con Rumba (Guaguanco vs Columbia)',
      instructors: 'Ania K. & Eryk',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 17,
      name: 'Timba',
      instructors: 'Eryk & Oliwia',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 18,
      name: 'Afro Contemporary',
      instructors: 'Yenifer',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 19,
      name: 'Arara',
      instructors: 'Jacqueline',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 20,
      name: 'Reggeaton',
      instructors: 'Heidi',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 21,
      name: 'Son',
      instructors: 'Ania & Jacek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 22,
      name: 'Reggeaton',
      instructors: 'Yoandy',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 23,
      name: 'Oggun',
      instructors: 'Fredy',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 24,
      name: 'Salsa Suelta',
      instructors: 'Ruggiero',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 25,
      name: 'Rumba Guaguanco part 1',
      instructors: 'Andy & Yuliet',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 26,
      name: 'Reglaton',
      instructors: 'Regla',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 27,
      name: 'Timba Ladies',
      instructors: 'Ania Kurowska',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 28,
      name: 'Men Styling',
      instructors: 'Ruggiero',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 29,
      name: 'Rumba Guaguanco part 2',
      instructors: 'Andy & Yuliet',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 30,
      name: 'Salsa Show Style',
      instructors: 'Ruggiero & Heidi',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 31,
      name: 'Afro Bodymovement',
      instructors: 'Ania Seruga',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 32,
      name: 'Rueda de Casino',
      instructors: 'Jacek',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 33,
      name: 'Timba New Style',
      instructors: 'Yoandy & Yenifer',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 34,
      name: 'Son Tradicional',
      instructors: 'Fredy & Bojana',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 35,
      name: 'Conga Carnaval',
      instructors: 'Jacqueline',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 36,
      name: 'Despelote',
      instructors: 'Eryk',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 37,
      name: 'Casino en Pareja',
      instructors: 'Yoandy & Yenifer',
      difficulty: Difficulty.ADVANCED,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 38,
      name: 'Tropicana',
      instructors: 'Regla',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 39,
      name: 'Palo',
      instructors: 'Andy & Yuliet',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 40,
      name: 'Columbia',
      instructors: 'Eryk',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 41,
      name: 'Timba con Reggeaton',
      instructors: 'Fredy & Bojana',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 42,
      name: 'Men Styling',
      instructors: 'Jacek',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 43,
      name: 'Ochun',
      instructors: 'Jacqueline',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 44,
      name: 'Suelta 4 fun!',
      instructors: 'Kijek',
      difficulty: Difficulty.FORFUN,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 45,
      name: 'Casino',
      instructors: 'Eryk & Oliwka',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 46,
      name: 'Reparto',
      instructors: 'Yoandy',
      difficulty: Difficulty.CHILLIN,
      classRoom: ClassRoom.B
  ),
  DanceClass(
      id: 47,
      name: 'Afro Fusion',
      instructors: 'Heidi',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.C
  ),
  DanceClass(
      id: 48,
      name: 'Mambo y Chachacha',
      instructors: 'Regla',
      difficulty: Difficulty.INTERMEDIATE,
      classRoom: ClassRoom.D
  ),
  DanceClass(
      id: 49,
      name: 'Group Photo',
      instructors: 'Everyone!',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 50,
      name: 'Lunch',
      instructors: 'Everyone!',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 51,
      name: 'Lunch',
      instructors: 'Everyone!',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.A
  ),
  DanceClass(
      id: 52,
      name: 'Rueda de Casino',
      instructors: 'Luis',
      difficulty: Difficulty.OPEN,
      classRoom: ClassRoom.A
  ),
];
