import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';
import 'package:flutter_netflix_responsive_ui/widgets/responsive.dart';
import 'package:flutter_netflix_responsive_ui/widgets/vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  final Content featuerdContent;

  const ContentHeader({Key key, @required this.featuerdContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: _contentHeaderMobile(
          featuerdContent: featuerdContent,
        ),
        desktop: _contentHeaderDesktop(
          featuerdContent: featuerdContent,
        ));
  }
}

class _contentHeaderMobile extends StatelessWidget {
  final Content featuerdContent;

  const _contentHeaderMobile({Key key, @required this.featuerdContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuerdContent.imageUrl),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuerdContent.titleImageUrl),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                  iconData: Icons.add,
                  title: 'List',
                  onTap: () => print('add button pressed')),
              _PlayButton(),
              VerticalIconButton(
                  iconData: Icons.info,
                  title: 'List',
                  onTap: () => print('add button pressed'))
            ],
          ),
        )
      ],
    );
  }
}

class _contentHeaderDesktop extends StatefulWidget {
  final Content featuerdContent;

  const _contentHeaderDesktop({Key key, @required this.featuerdContent})
      : super(key: key);

  @override
  __contentHeaderDesktopState createState() => __contentHeaderDesktopState();
}

class __contentHeaderDesktopState extends State<_contentHeaderDesktop> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.featuerdContent.imageUrl),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
          Positioned(
            left: 60,
            right: 60,
            bottom: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Image.asset(widget.featuerdContent.titleImageUrl),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.featuerdContent.description,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2, 4),
                            blurRadius: 6)
                      ]),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _PlayButton(),
              const SizedBox(
                width: 16,
              ),
              FlatButton.icon(
                  color: Colors.white,
                  onPressed: () => print('More Info'),
                  icon: Icon(Icons.info_outline),
                  label: Text(
                    'More Info',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),

              const SizedBox(
                width: 16,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
      onPressed: () => print('play button pressed'),
      color: Colors.white,
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
      ),
      label: const Text(
        'Play',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
    );
  }
}
