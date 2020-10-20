import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final double iconSize;

  const CircleButtonWidget(
      {Key key,
      @required this.icon,
      @required this.onTap,
      @required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxHeight: getProportionateScreenWidth(40.0),
          maxWidth: getProportionateScreenWidth(40.0)),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
      child: IconButton(
        icon: Icon(
          icon,
        ),
        onPressed: onTap,
        color: Colors.black,
        iconSize: getProportionateScreenWidth(iconSize),
      ),
    );
  }
}
