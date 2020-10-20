import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PersonalActionClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              MdiIcons.videoPlus,
              color: Colors.red,
            ),
            label: Text('Live'),
          ),
          VerticalDivider(
            width: getProportionateScreenWidth(8.0),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.photo_library,
              color: Colors.green,
            ),
            label: Text('Photo'),
          ),
          VerticalDivider(
            width: getProportionateScreenWidth(8.0),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: Colors.purpleAccent,
            ),
            label: Text('Live'),
          )
        ],
      ),
    );
  }
}
