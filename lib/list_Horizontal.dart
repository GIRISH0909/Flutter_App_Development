import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUListHorizontalList extends StatelessWidget{
  final int n;
  const PESUListHorizontalList({super.key,required this.n});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SampleContainer(color: Colors.green, label: 'Tile-$index',);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 8,);
          },
          itemCount: n
      ),
    );
  }
}
