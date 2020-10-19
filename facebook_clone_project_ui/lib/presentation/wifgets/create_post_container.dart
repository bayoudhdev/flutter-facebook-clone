import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/models/models.dart';
import 'package:facebook_clone_project_ui/presentation/wifgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreatePostContainer extends StatelessWidget {
  final User user;

  const CreatePostContainer({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(10.0)),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(15.0)),
            child: Row(
              children: [
                ProfileAvatar(
                  imageUrl: user.imageUrl,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(8.0),
                ),
                Expanded(
                  child: Container(
                    height: getProportionateScreenHeight(35.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.grey[500]),
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      cursorColor: Theme.of(context).accentColor,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[500], width: 1.0),
                              borderRadius: BorderRadius.circular(28)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[500], width: 1.0),
                              borderRadius: BorderRadius.circular(28)),
                          contentPadding: EdgeInsets.only(
                              left: getProportionateScreenWidth(15)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[500], width: 1.0),
                              borderRadius: BorderRadius.circular(28)),
                          hintText: "What\'s on your mind?"),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10.0),
          ),
          Divider(
            height: getProportionateScreenHeight(10.0),
            thickness: 0.5,
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
