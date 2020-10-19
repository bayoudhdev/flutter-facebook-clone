import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/presentation/wifgets/widgets.dart';
import 'package:flutter/material.dart';

class AddMyStory extends StatelessWidget {
  const AddMyStory({
    Key key,
    @required this.offset,
    @required this.widget,
  }) : super(key: key);

  final double offset;
  final Stories widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0 + ((offset >= 72.0) ? 72.0 : offset),
      bottom: 0 + ((offset >= 72.0) ? 72.0 : offset),
      left: 0,
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 30),
        margin: EdgeInsets.symmetric(
            horizontal:
                getProportionateScreenWidth(((offset >= 75.0) ? 0.0 : 3.0))),
        height: getProportionateScreenHeight(200.0),
        width: getProportionateScreenWidth(
            110.0 - (offset > 50.0 ? 60.0 : offset).toDouble()),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(13),
                topLeft: Radius.circular(((offset >= 75.0) ? 0.0 : 13)),
                bottomLeft: Radius.circular(((offset >= 75.0) ? 0.0 : 13)),
                bottomRight: Radius.circular(13))),
        child: Stack(
          alignment: Alignment(0, -(1 / offset).clamp(0, 1).toDouble()),
          children: [
            AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              height: getProportionateScreenHeight(
                  110 - (offset > 80.0 ? 80.0 : offset).toDouble()),
              width: getProportionateScreenWidth(
                  110.0 - (offset > 80.0 ? 80.0 : offset).toDouble()),
              duration: Duration(milliseconds: 60),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey[400],
                      width: ((offset >= 75.0) ? 0.0 : 1.2)),
                  borderRadius: BorderRadius.circular(
                      (offset > 80.0 ? 30.0 : 13.0).toDouble()),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          widget.currentUser.imageUrl))),
            )
          ],
        ),
      ),
    );
  }
}
