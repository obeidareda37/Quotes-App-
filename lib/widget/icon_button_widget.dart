import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Icon icon;
  final Function onPressed;
  IconButtonWidget({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon:icon, onPressed: onPressed);
  }
}
