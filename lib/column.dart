import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUColumn extends StatelessWidget {
  const PESUColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FilledButton(
            onPressed: () {},
            child: Text('Looooooooong Texxxxt'),
        ),
        SampleContainer(
          color: Colors.yellow,
          label: 'Container2',

        ),
        SampleContainer(
          color: Colors.blue,
          label: 'Container3',
        ),
      ],
    );
  }
}
