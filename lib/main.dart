import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rightDiceNumber =1;

  void changediceface(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context){

    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed:(){
                    changediceface();
                 },
                child: Image.asset('images/dice$leftDiceNumber.png')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    onPressed: (){
                      changediceface();
                    },
                      child: Image.asset('images/dice$rightDiceNumber.png')
                  )
            ),
          ),
        ],
      ),
    );
  }
}

