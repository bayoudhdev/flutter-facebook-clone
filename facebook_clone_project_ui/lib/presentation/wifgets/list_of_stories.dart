import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/models/models.dart';
import 'package:facebook_clone_project_ui/presentation/wifgets/widgets.dart';
import 'package:flutter/material.dart';

class ListOfStories extends StatelessWidget {
  const ListOfStories({
    Key key,
    @required ScrollController scrollController,
    @required this.stories,
  })  : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;
  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(120.0)),
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: stories?.length ?? 0,
      itemBuilder: (context, index) {
        return ExternalItemStory(story: stories[index]);
      },
    );
  }
}
