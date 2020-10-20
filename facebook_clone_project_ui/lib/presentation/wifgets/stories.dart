import 'package:facebook_clone_project_ui/config/size_config.dart';
import 'package:facebook_clone_project_ui/models/models.dart';
import 'package:facebook_clone_project_ui/presentation/cubits/scroll_item_story/scroll_item_story_cubit.dart';
import 'package:facebook_clone_project_ui/presentation/wifgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Stories extends StatefulWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key key, @required this.currentUser, @required this.stories})
      : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      context.bloc<ScrollItemStoryCubit>().setOffset(
          _scrollController.offset > 0
              ? (_scrollController.offset / 200).clamp(0, 1).toDouble()
              : 0.0);
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
            height: getProportionateScreenHeight(200),
            child: Stack(
              children: [
                ListOfStories(
                  scrollController: _scrollController,
                  stories: widget.stories,
                ),
                BlocBuilder<ScrollItemStoryCubit, double>(
                  builder: (context, scrollOffset) {
                    return AddMyStory(offset: scrollOffset, widget: widget);
                  },
                )
              ],
            ),
          ),
          RoundedButton(
            text: 'See all stories',
            onPressed: () {},
            background: Colors.blue[50],
          )
        ],
      ),
    );
  }
}
