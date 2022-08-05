import 'package:flutter/material.dart';

class CardGeneration extends StatelessWidget {
  final Color backgroundColor;
  final double? elevation;
  final String title;
  final Function()? ontap;

  const CardGeneration({
    Key? key,
    this.backgroundColor = Colors.redAccent,
    this.elevation,
    required this.title,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: elevation,
      child: InkWell(
        child: Center(
          child: Text(title),
        ),
        onTap: ontap,
      ),
    );
  }
}
