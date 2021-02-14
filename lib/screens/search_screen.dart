import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';
import 'package:flutter_netflix_responsive_ui/widgets/content_movie.dart';
class SearchScreen extends StatefulWidget{
  const SearchScreen ({Key key}) : super (key: key);
  @override
  _SearchScreen createState() => _SearchScreen();
}
class _SearchScreen extends State<SearchScreen>{

  ScrollController _scrollController ;
  @override
  void initState(){
    _scrollController = ScrollController()..addListener(() {
    });
    super.initState();
  }

  @override
  void dispose() {

    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.black));
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          decoration: BoxDecoration(
              color: Color.fromARGB(50, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(22))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for a show, movies',
                      hintStyle: TextStyle(color: Colors.white),

                      icon: IconButton(
                        icon: Icon(Icons.search),
                        iconSize: 20,
                        color: Colors.white,
                        onPressed: () => print('search button is clicked'),
                      )
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: IconButton(
                  onPressed: null,
                  iconSize: 20,
                  icon: Icon(Icons.keyboard_voice,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: ContentMovies(size: size,contentListMovies: myList,key: PageStorageKey('Previews'),),
            )
          ],
        ),
      ),
    );
  }
}
