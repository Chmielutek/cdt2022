import 'package:flutter/material.dart';

import '../models/dance_class.dart';

class ClassDayScreen extends StatefulWidget {
  static String routeName = '/class-day-screen';

  @override
  State<ClassDayScreen> createState() => _ClassDayScreenState();
}

class _ClassDayScreenState extends State<ClassDayScreen> {
  late List<ClassesBlock> classesBlock;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      classesBlock = routeArgs['classesBlock'];
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${classesBlock[0].day.toString()} Classes'),),
      body: ClassBlocksExpansion(classesBlock)
    );
  }
}

class ClassBlocksExpansion extends StatefulWidget {
  List<ClassesBlock> classBlocks;

  ClassBlocksExpansion(this.classBlocks);

  @override
  State<ClassBlocksExpansion> createState() => _ClassBlocksExpansionState();
}

class _ClassBlocksExpansionState extends State<ClassBlocksExpansion> {
  List<bool> _isExpanded = List.generate(10, (_) => false);

  String _formatStartingHour(int startingHour) {
    var formattedStartingHour = '';
    switch (startingHour) {
      case 10:
        formattedStartingHour = '10:00 AM';
        break;
      case 11:
        formattedStartingHour = '11:00 AM';
        break;
      case 12:
        formattedStartingHour = '12:00 AM';
        break;
      case 14:
        formattedStartingHour = '2:00 PM';
        break;
      case 15:
        formattedStartingHour = '3:00 PM';
        break;
      case 16:
        formattedStartingHour = '4:00 PM';
        break;
    }
    return formattedStartingHour;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) => setState(() {
            _isExpanded[index] = !isExpanded;
          }),
          children: [
            for (int i = 0; i < widget.classBlocks.length; i++)
              ExpansionPanel(
                  backgroundColor: Theme.of(context).backgroundColor,
                  headerBuilder: (_, isExpanded) {
                    return Center(
                      child: Text(_formatStartingHour(widget.classBlocks[i].startingHour)),
                    );
                  },
                  body: Column(
                    children: widget.classBlocks[i].classes
                        .map((danceClass) => DanceClassCard(danceClass)).toList()
                  ),
                  isExpanded: _isExpanded[i]
              )
          ]
        ),
      ),
    );
  }
}

class DanceClassCard extends StatelessWidget {
  DanceClass danceClass;

  DanceClassCard(this.danceClass);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var columnWidth = (size.width - 10) / 3;
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: columnWidth,
              child: Column(
                children: [
                  Text(danceClass.name),
                  Text(danceClass.instructors),
                ],
              ),
            ),
            Container(
              width: columnWidth,
              child: Column(
                children: [
                  Text(danceClass.difficulty.toString()),
                  Text(danceClass.classRoom.toString()),
                ],
              ),
            ),
            Container(
              width: columnWidth / 2,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border)
              ),
            )
          ],
        ),
      ),
    );
  }
}


