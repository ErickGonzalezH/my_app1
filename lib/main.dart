import 'package:flutter/material.dart';
import 'package:my_app1/screens/counter_screen.dart';
//import 'package:my_app1/screens/home_screen.dart';

void main() {
  runApp( const MyApp() );
}


//Iniciando Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //El debugbanner es para quitar el debug en la app.
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );
  }

}