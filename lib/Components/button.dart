import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PESUButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final bool active;
  final String imagePath;
  const PESUButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.imagePath,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        onPressed();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50 ,
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: active ? Theme.of(context).colorScheme.onPrimary : null,
            ),
          ),
        ],
      ),
    );
  }
}