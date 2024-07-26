import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUExpanded extends StatelessWidget {
  const PESUExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex:1,
              child: SampleContainer(
                color: Colors.red,
                label: '1',
              ),
            ),
            Expanded(
              flex:1,
              child: SampleContainer(
                color: Colors.green,
                label: '2',
              ),
            ),
            Expanded(
              flex:1,
              child: SampleContainer(
                color: Colors.blue,
                label: '2',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Image.asset('images/logo-type.png')
            ),
            Expanded(
                child: Image.asset('images/logo-type.png')
            ),
            Expanded(
                child: Image.asset('images/logo-type.png')
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset('images/logo-type.png'),
                  Image.asset('images/logo-type.png'),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Image.asset('images/logo-type.png')
            ),
            Expanded(
              flex:1,
              child: SampleContainer(
                  color: Colors.red,
                  label: '1',
              ),
            ),
            Expanded(
              flex:1,
              child: SampleContainer(
                color: Colors.purple,
                label: '2',
              ),
            ),
            Column(
              children: [
                 SampleContainer(
                    color: Colors.greenAccent,
                    label: '3',
                  ),
                SampleContainer(
                  color: Colors.greenAccent,
                  label: '4',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
