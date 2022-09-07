import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

class InformationScreen extends StatelessWidget {
  static String routeName = '/info-screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 0.8,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
                children: [
                  FridayOffice(),
                  SaturdayOffice(),
                  SundayOffice(),
                  BusSchedule()
                ]
            ),
        ),
      ),
    );
  }
}

class FridayOffice extends StatelessWidget {
  const FridayOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            color: Colors.lightBlueAccent,
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.lightBlueAccent,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.lightBlueAccent.withOpacity(0.4)
                    )
                  ]
              ),
              width: 250,
              child: Text(AppLocalizations.of(context)?.openinghours as String,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            height: 25,
            child: Text('${AppLocalizations.of(context)?.friday as String} 09.09', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          height: 25,
          child: Text('18:00 – 21:00 | FESTIVAL HOTEL', style: TextStyle(fontSize: 16)),
        ),
        Container(
          height: 25,
          child: Text('22:00 – 02:30 | A2 CENTRUM KONCERTOWE', style: TextStyle(fontSize: 16)),
        )
      ],
    );
  }
}

class SaturdayOffice extends StatelessWidget {
  const SaturdayOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 25,
            child: Text('${AppLocalizations.of(context)?.saturday as String} 10.09', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          height: 25,
          child: Text('9:45 – 18:00 | ${AppLocalizations.of(context)?.workshopplace as String}', style: TextStyle(fontSize: 16)),
        ),
        Container(
          height: 25,
          child: Text('22:30 – 02:30 | A2 CENTRUM KONCERTOWE', style: TextStyle(fontSize: 16)),
        )
      ],
    );
  }
}

class SundayOffice extends StatelessWidget {
  const SundayOffice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 25,
            child: Text('${AppLocalizations.of(context)?.sunday as String} 11.09', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          height: 25,
          child: Text('10:45 – 18:00 | ${AppLocalizations.of(context)?.workshopplace as String}', style: TextStyle(fontSize: 16)),
        ),
        Container(
          height: 25,
          child: Text('22:00 – 1:00 | STARY KLASZTOR', style: TextStyle(fontSize: 16)),
        )
      ],
    );
  }
}

class BusSchedule extends StatelessWidget {
  const BusSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.lightBlueAccent,
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.lightBlueAccent,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.lightBlueAccent.withOpacity(0.4)
                  )
                ]
            ),
            width: 250,
            child: Text(AppLocalizations.of(context)?.busschedule as String,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Container(
            height: 25,
            child: Text(AppLocalizations.of(context)?.fromhotel as String, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          height: 25,
          child: Text('22:30 | 23:00 | 23:30 | 0:00 | 0:20', style: TextStyle(fontSize: 16)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 25,
            child: Text(AppLocalizations.of(context)?.fromparty as String, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          height: 25,
          child: Text('03:00 | 03:30 | 04:00 | 04:30 | 05:00 | 05:30', style: TextStyle(fontSize: 16)),
        )
      ],
    );
  }
}



