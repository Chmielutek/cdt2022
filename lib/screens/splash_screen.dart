import 'package:calle_de_timberos/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
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
        child: Container(
          height: 300,
          width: 300,
          child: Image.asset('assets/images/calle_logo.png'),
        ),
      )
    );
  }
}
