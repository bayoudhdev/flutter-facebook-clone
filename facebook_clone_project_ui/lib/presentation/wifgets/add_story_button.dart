import 'package:facebook_clone_project_ui/config/palette.dart';
import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:flutter/material.dart';

class AddStoryButton extends StatelessWidget {
  const AddStoryButton({
    Key key,
    @required this.offset,
    @required double sizeContainerSmallIcon,
    @required double sizeSmallIcon,
  })  : _sizeContainerSmallIcon = sizeContainerSmallIcon,
        _sizeSmallIcon = sizeSmallIcon,
        super(key: key);

  final double offset;
  final double _sizeContainerSmallIcon;
  final double _sizeSmallIcon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(offset.clamp(0, 0.6), offset.clamp(0.3, 0.8)),
      child: Container(
        height: getProportionateScreenHeight(_sizeContainerSmallIcon),
        width: getProportionateScreenWidth(_sizeContainerSmallIcon),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Palette.facebookBlue),
        child: Icon(
          Icons.add,
          size: getProportionateScreenWidth(_sizeSmallIcon),
          color: Colors.white,
        ),
      ),
    );
  }
}
