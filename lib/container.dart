import 'package:flutter/material.dart';

class PESUContainer extends StatelessWidget {
  const PESUContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      padding: const EdgeInsets.fromLTRB(10, 30, 50, 70),
      margin: const EdgeInsets.fromLTRB(20, 50, 10, 70),
      decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.red,
            width: 10,
          ),
          borderRadius: const BorderRadius.all(
              Radius.elliptical(10, 15),
          ),
      ),
      child: const Text('Hello World'),
    );
  }
}
