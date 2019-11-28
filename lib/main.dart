import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(FWorkout());

class FWorkout extends StatelessWidget {
  final String _appName = 'ProyectoFinalMoviles';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
     buttonTheme: ButtonThemeData(height: 50, )
      ),
      title: _appName,
      debugShowCheckedModeBanner: false,
      routes: myRoutes,
    );
  }
}
