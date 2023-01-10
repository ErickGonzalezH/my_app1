import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //Se declara variable para un tamaño de texto específico.
    const fontSize30 = TextStyle( fontSize: 25 );

    //Declara propiedad
    int counter = 10;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar( 
        backgroundColor: Colors.black54,
        title: const Text('HomeScreen'),
        titleTextStyle: fontSize30,
        elevation: 10,
       ),
  
      body: Center(
        child: Column(
          //mainaxis es para alinear el texto vertical 
          mainAxisAlignment: MainAxisAlignment.center,
          //crossaxis es para alinear el texto horizontal 
          crossAxisAlignment: CrossAxisAlignment.center,
          
              children: [
                const Text('Número de Clicks', style: fontSize30 ),
                Text('$counter', style: fontSize30),
              ],
            ),
      ),
      
      //Boton flotante
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        //Cambiar color al boton
        backgroundColor: Colors.black54,
        elevation: 10,
        //icon es widget especializado en mostrar íconos.
        child: const Icon( Icons.add ),
        onPressed:() {
          counter++;
          print('Hola mundo: $counter');
        },
      ),
    );
  }
}

