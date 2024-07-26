import 'package:flutter/material.dart';
import 'package:pokedex/list_column.dart';
import 'package:pokedex/row.dart';

class PESUListView extends StatelessWidget {
  final int n;
  const PESUListView({super.key,required this.n});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(n, (index){
        return Tile(label:'Tile-$index');
      },)
    );
  }
}
