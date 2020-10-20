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
    double _rightRadiosOffset = (offset * 20) < 13 ? 13 : offset * 20;
    double _leftRadiosOffset = (1 / (offset + 0.08)).toDouble();
    double _topRadiosImhOffset = (offset * 40) < 13 ? 13 : offset * 20;
    double _bottomRadiosImhOffset = (offset * 40) < 13 ? 0 : offset * 20;
    double _sizeSmallIcon = (20.0 * (1 - offset)) < 8 ? 8 : 20 * (1 - offset);
    double _sizeContainerSmallIcon =
        (30 * (1 - offset)) < 15 ? 15 : 30 * (1 - offset);
    return Positioned(
      top: getProportionateScreenWidth(offset * 65),
      bottom: getProportionateScreenWidth(offset * 65),
      left: 0,
      child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 50),
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth((1 - offset) * 7)),
        height: getProportionateScreenHeight(200.0),
        width: getProportionateScreenWidth(110.0 - (offset * (110.0 * 0.57))),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: (offset * 40) < 13 ? Colors.grey[400] : Colors.white,
              width: (1.2)),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(_leftRadiosOffset),
              bottomRight: Radius.circular(_rightRadiosOffset),
              topLeft: Radius.circular(_leftRadiosOffset),
              topRight: Radius.circular(_rightRadiosOffset)),
        ),
        child: Stack(
          alignment: Alignment(0, (-1 * (1 - offset))),
          children: [
            Positioned(
              bottom: getProportionateScreenWidth(15.0),
              left: getProportionateScreenWidth(13.0),
              right: getProportionateScreenWidth(13.0),
              child: Text(
                'Create my story',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: getProportionateScreenHeight(
                        (offset * 40) < 13 ? 13.0 : 0),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(
                  (offset * 10) <= 0 ? 0 : offset * 5)),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          widget.currentUser.imageUrl)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_topRadiosImhOffset - 1.5),
                      topRight: Radius.circular(_topRadiosImhOffset - 1.5),
                      bottomLeft: Radius.circular(_bottomRadiosImhOffset),
                      bottomRight: Radius.circular(_bottomRadiosImhOffset)),
                ),
                height: getProportionateScreenWidth(110.0),
              ),
            ),
            AddStoryButton(
                offset: offset,
                sizeContainerSmallIcon: _sizeContainerSmallIcon,
                sizeSmallIcon: _sizeSmallIcon)
          ],
        ),
      ),
    );
  }
}
