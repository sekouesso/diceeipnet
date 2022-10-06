import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int buttongauche = 1;
  int buttondroit = 4;
  void randombutton(){
    setState(() {
      buttondroit = Random().nextInt(6)+1;
      buttongauche = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed: () {
                debugPrint('Bouton de gauche');
                randombutton();
              },
              child:  Image(
                image: AssetImage('images/dice$buttongauche.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                debugPrint('Bouton de droite');
                randombutton();
              },
              child:  Image(
                image: AssetImage('images/dice$buttondroit.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
