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

    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          child: Image.asset('assets/images/calle_logo.png'),
        ),
      )
    );
  }
}
