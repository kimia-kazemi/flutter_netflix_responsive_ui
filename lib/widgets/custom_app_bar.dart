import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/widgets/responsive.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffSet;

  const CustomAppBar({Key key, this.scrollOffSet = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color:
          Colors.black.withOpacity((scrollOffSet / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _customAppBarMobile(),
        desktop: _customAppBarDesktop(),
      ),
    );
  }
}

class _customAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('hi'),
                ),
                _AppBarButton(
                  title: 'Movies ',
                  onTap: () => print('hi'),
                ),
                _AppBarButton(
                  title: 'My List ',
                  onTap: () => print('hi'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _customAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => print('search button'),
                ),
                _AppBarButton(
                  title: 'KIDs',
                  onTap: () => print('hi'),
                ),
                _AppBarButton(
                  title: 'DVD',
                  onTap: () => print('hi'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.card_giftcard),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => print('Gift'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.notifications),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => print('Notifications'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('hi'),
                ),
                _AppBarButton(
                  title: 'Movies ',
                  onTap: () => print('hi'),
                ),
                _AppBarButton(
                  title: 'My List ',
                  onTap: () => print('hi'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({Key key, this.title, this.onTap}) : super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
