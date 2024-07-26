import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PESUList extends StatelessWidget {
  final int n;
  const PESUList({super.key,required this.n});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(n, (index){
          return Tile(
            label: 'Tile-$index',
          );
        }),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String label;
  const Tile({super.key,required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16),
      child: Text(label),
    );
  }
}
