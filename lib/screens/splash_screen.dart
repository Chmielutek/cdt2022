import 'package:flutter/material.dart';

import '../screens/tabs_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String quote = 'If you don\'t like me in Son, \n you don\'t deserve me in Reggeaton';
  static const String author = 'Caballo Viejo Loco';
  int duration = 0;
  String goToPageNamedRoute;
  
  SplashScreen(this.duration, this.goToPageNamedRoute);

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => TabsScreen())
      );
    });
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/calle_logo.png'),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(quote, style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic
                  ),),
                  Text(author,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
