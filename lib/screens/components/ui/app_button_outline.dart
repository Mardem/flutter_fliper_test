import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';

class AppButtonOutline extends StatelessWidget {
  final GestureTapCallback onPressed;
  final Widget child;
  final EdgeInsets padding;

  const AppButtonOutline({this.onPressed, this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Padding(
        padding: padding ?? EdgeInsets.all(0),
        child: child,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(2),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: DefaultColors.defaultBlue,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
