import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget{
  final String title;
  final Icon icon;
  final Function onTap;


  ListTileWidget({this.title, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: onTap,
    );
  }

}