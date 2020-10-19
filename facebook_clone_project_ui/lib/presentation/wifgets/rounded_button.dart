import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color background;

  const RoundedButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      @required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: SizeConfig.screenWidth,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.blueAccent[400],
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(14.0)),
        ),
        color: background,
      ),
    );
  }
}
