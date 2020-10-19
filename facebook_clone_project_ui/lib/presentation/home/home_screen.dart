import 'package:facebook_clone_project_ui/config/palette.dart';
import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/data/data.dart';
import 'package:facebook_clone_project_ui/presentation/wifgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            centerTitle: false,
            floating: true,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(22.0),
                  letterSpacing: -1.2),
            ),
            actions: [
              CircleButtonWidget(
                icon: Icons.search,
                onTap: () {},
                iconSize: 25.0,
              ),
              CircleButtonWidget(
                icon: MdiIcons.facebookMessenger,
                onTap: () {},
                iconSize: 25.0,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              user: currentUser,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 8.0,
              color: Colors.grey[400],
            ),
          ),
          SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 8.0,
              color: Colors.grey[400],
            ),
          ),
          SliverToBoxAdapter(
            child: Stories(currentUser: currentUser, stories: stories),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 8.0,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
