import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUAvatar extends StatelessWidget {
  const PESUAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left:100,
          child: SampleContainer(
            color: Colors.lightBlue,
            label: '1',
            size:200,
          ),
        ),
        Positioned(
          left:150,
          child: SampleContainer(
            color: Colors.red,
            label: '2',
            size:200,
          ),
        ),
        Positioned(
          left: 200,
          child: SampleContainer(
              color: Colors.yellow,
              label: '3',
              size:200,
            ),
        ),
      ],
    );
  }
}
