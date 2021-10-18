import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';

class ResumeCDI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.width * .10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('CDI'),
          Text(
            '3.45%',
            style: TextStyle(
              fontSize: size.width * .05,
              fontWeight: FontWeight.bold,
              color: DefaultColors.defaultBlue,
            ),
          ),
        ],
      ),
    );
  }
}