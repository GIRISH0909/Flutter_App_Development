import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PESURow extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const PESURow({super.key, required this.mainAxisAlignment,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FilledButton(
            onPressed: () {},
            child: Text('Click Me'),
        ),
        SampleContainer(color: Colors.green,label: 'Container',),
      ],
    );
  }
}

class SampleContainer extends StatelessWidget {
  final Color color;
  final String label;
  final double? padding;
  final double? size;

  const  SampleContainer({
    super.key,
    required this.color,
    required this.label,
    this.padding,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 30),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
