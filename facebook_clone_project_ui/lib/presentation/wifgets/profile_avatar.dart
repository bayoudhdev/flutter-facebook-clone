import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone_project_ui/config/palette.dart';
import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isConnected;

  const ProfileAvatar(
      {Key key, @required this.imageUrl, this.isConnected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 20.0,
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
        isConnected
            ? Positioned(
                right: 0,
                bottom: getProportionateScreenHeight(2),
                child: Container(
                  width: getProportionateScreenWidth(10.0),
                  height: getProportionateScreenHeight(10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Palette.online,
                      border: Border.all(width: 1.0, color: Colors.white)),
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
