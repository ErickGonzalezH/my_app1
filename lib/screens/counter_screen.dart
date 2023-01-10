import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  //Declara propiedad
    int counter = 0;

    //Funcion para sumae boton
    void increase() {
      counter++;
      setState(() {});
    }

    //Funcion para restar boton
    void decrease() {
      counter--;
      setState(() {});
    }

    //Funcion para reset boton
    void reset() {
      counter = 0;
      setState(() {});
    }

  @override
  Widget build(BuildContext context) {

    //Se declara variable para un tamaño de texto específico.
    const fontSize30 = TextStyle( fontSize: 25 );

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar( 
        backgroundColor: Colors.black54,
        title: const Text('CounterScreen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}


//Funcion de botones.
class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({ Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        //Boton de reset
        FloatingActionButton(
          //Cambiar color al boton
          backgroundColor: Colors.black54,
          elevation: 10,
          onPressed: () => resetFn(),
          //icon es widget especializado en mostrar íconos.
          child: const Icon( Icons.restore ),
        ),

        //Boton de resta
        FloatingActionButton(
          //Cambiar color al boton
          backgroundColor: Colors.black54,
          elevation: 10,
          onPressed: () => decreaseFn(),
          //icon es widget especializado en mostrar íconos.
          child: const Icon( Icons.expand_more ),
        ),

        //Boton de suma
        FloatingActionButton(
          //Cambiar color al boton
          backgroundColor: Colors.black54,
          elevation: 10,
          onPressed: () => increaseFn() ,
          //icon es widget especializado en mostrar íconos.
          child: const Icon( Icons.expand_less ),
        ),
      ],
    );
  }
}

