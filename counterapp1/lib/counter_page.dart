import 'package:flutter/material.dart';
// create a statefulWidget
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {


  //essentials for building using a stateful widget

  //1 variable
  int counter = 0;

  //2 method
  void incrementCounter () {
    //setstate rebuilds the widget 
    // when you want to change the value of something and you want it to be reflected use a setstate
    setState(() {
       counter++;
    });
  }

  //3 UI
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
          Text("You pushed this button this number of times:"),

          //counterapp value 
          //changed the value to string
          Text(counter.toString(),
          style: TextStyle(fontSize: 40),),

          //button

          ElevatedButton(onPressed: incrementCounter, 
          child: Text("Increment!!!"),),
        ],),
      ),
    );
  }
}