import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

List<Color> colors=[
  Colors.red,
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.yellow,
];

class AvatarStack extends StatelessWidget {
  final int n;
  const AvatarStack({super.key,required this.n});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(n, (index) {
        return Positioned(
          left:index* 70,
          child: CircularContainer(
              color: colors[index%n],
          ),
        );
      },),
    );
  }
}


class CircularContainer extends StatelessWidget {
  final Color color;
  const CircularContainer({super.key,required this.color});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color
      ),
    );
  }
}
