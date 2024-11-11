import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const Alignment defaultStartAlignment = Alignment.topLeft;
const defaultEndAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color startColor;
  final Color endColor;

  const GradientContainer(
      {super.key, required this.startColor, required this.endColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: defaultStartAlignment,
          end: defaultEndAlignment, 
        ),
      ),
      child: const Center(
        child: StyledText('Hola'),
      ),
    );
  }
}
