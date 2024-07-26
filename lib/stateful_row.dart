import 'package:flutter/material.dart';
import 'package:pokedex/Components/button.dart';
import 'package:pokedex/row.dart';

class PESURowPage extends StatefulWidget {
  const PESURowPage({super.key});

  @override
  State<PESURowPage> createState() => _PESURowPageState();
}

class _PESURowPageState extends State<PESURowPage> {

  MainAxisAlignment alignment=MainAxisAlignment.start;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Row'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          PESURow(mainAxisAlignment:alignment),
          Divider(),
          PESUButton(
            label: 'Start',
            imagePath: 'images/start.jpg',
            onPressed: (){
              setState(() {
                alignment=MainAxisAlignment.start;
              });
            },
            active: alignment==MainAxisAlignment.start,
          ),
          SizedBox(height: 10,),
          PESUButton(
            label: 'End',
            imagePath: 'images/logo.png',
            onPressed: (){
              setState(() {
                alignment=MainAxisAlignment.end;
              });
            },
            active: alignment==MainAxisAlignment.end,
          ),
          SizedBox(height: 10,),
          PESUButton(
            label: 'Center',
            imagePath: 'images/logo.png',
            onPressed: (){
              setState(() {
                alignment=MainAxisAlignment.center;
              });
            },
            active: alignment==MainAxisAlignment.center,
          ),
          SizedBox(height: 10,),
          PESUButton(
            label: 'Space Evenly',
            imagePath: 'images/logo.png',
            onPressed: (){
              setState(() {
                alignment=MainAxisAlignment.spaceEvenly;
              });
            },
            active: alignment==MainAxisAlignment.spaceEvenly,
          ),
          SizedBox(height: 10,),
          PESUButton(
            label: 'Space Around',
            imagePath: 'images/logo.png',
            onPressed: (){
              setState(() {
                alignment=MainAxisAlignment.spaceAround;
              });
            },
            active: alignment==MainAxisAlignment.spaceAround,
          ),
        ],
      ),
    );
  }
}