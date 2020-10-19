import 'package:facebook_clone_project_ui/config/palette.dart';
import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/models/models.dart';
import 'package:facebook_clone_project_ui/presentation/wifgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key key, @required this.onlineUsers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(10.0),
          horizontal: getProportionateScreenWidth(4.0)),
      color: Colors.white,
      height: getProportionateScreenHeight(60.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + (onlineUsers?.length ?? 0),
        itemBuilder: (BuildContext context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(8.0)),
              child: _CreateRoomButton(),
            );
          }
          User user = onlineUsers[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isConnected: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Create a room'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.white,
      borderSide: BorderSide(width: 1.0, color: Colors.blueAccent[100]),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: getProportionateScreenWidth(25.0),
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 4.0,
          ),
          Text('Create\n room')
        ],
      ),
    );
  }
}
