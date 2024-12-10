import 'package:flutter/material.dart';
import 'package:flutter_algorithm_task/models/models.dart';
import 'package:flutter_algorithm_task/styles.dart';

class NumberItem extends StatelessWidget {
  final NumberModel number;

  const NumberItem({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: number.isHighlighted ? AppColors.secondary : Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        number.number.toString(),
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: number.isHighlighted ? Colors.black : Colors.grey[700],
        ),
      ),
    );
  }
}
