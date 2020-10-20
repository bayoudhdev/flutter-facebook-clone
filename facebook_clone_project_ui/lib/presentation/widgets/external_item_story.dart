import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone_project_ui/config/palette.dart';
import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/models/models.dart';
import 'package:facebook_clone_project_ui/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ExternalItemStory extends StatelessWidget {
  final Story story;

  const ExternalItemStory({Key key, @required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(3.0)),
          height: getProportionateScreenHeight(200.0),
          width: getProportionateScreenWidth(110.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  story.imageUrl,
                )),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Colors.grey[400], width: 1.2),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(3.0)),
          height: getProportionateScreenHeight(200),
          width: getProportionateScreenWidth(110.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
                colors: [
                  Colors.black54,
                  Colors.transparent,
                ]),
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        Container(
          padding: EdgeInsets.all(2.0),
          margin: EdgeInsets.only(
              top: getProportionateScreenHeight(8.0),
              left: getProportionateScreenWidth(8.0)),
          height: getProportionateScreenHeight(32.0),
          width: getProportionateScreenWidth(32.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: story.isViewed ? Colors.grey[300] : Palette.facebookBlue,
                width: 2,
              )),
          child: ProfileAvatar(imageUrl: story.user.imageUrl),
        ),
        Positioned(
            left: 13,
            bottom: 10,
            right: 13,
            child: Text(
              story.user.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(13.0)),
            ))
      ],
    );
  }
}
