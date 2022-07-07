import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class AboutUsScreen extends StatelessWidget {
  static String routeName = '/about-us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Center(
        child: Text('About us will be '),
      ),
    );
  }
}
