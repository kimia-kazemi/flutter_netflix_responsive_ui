import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';
import 'package:flutter_netflix_responsive_ui/models/carousel_model.dart';
import 'package:flutter_netflix_responsive_ui/widgets/suggestedMovie.dart';


List<MyPageItem> items=[
  MyPageItem( 'Wichter', 'https://collider.com/wp-content/uploads/2019/12/witcher-character-poster-ciri.jpg',),
  MyPageItem( 'The Crown', 'https://i.pinimg.com/originals/0c/63/71/0c6371e2a28eea1e908e2150da77c000.jpg',
  ),
  MyPageItem( 'Stranger Things', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLAEhMFb_flPa2kEMEfW829L5XhCmRdcSBWg&usqp=CAU',),



];

class NoonLoopingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height:  MediaQuery.of(context).size.width,
        width: double.infinity,

        child: CarouselSlider(

          options: CarouselOptions(
            aspectRatio: 1.2,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items:
          items.map((i){
            return Builder(
                builder:(BuildContext context){
                  return Container(
                    height: 276,
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.white.withOpacity(0.5)

                      ),
                      child:Stack(
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(3,3),
                                )
                              ] ),
                              child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.network(i.path,fit: BoxFit.fill,height: 276,width:  MediaQuery.of(context).size.width,),)),
                          Positioned(
                              left: 20,
                              right: 0,
                              bottom: 10,
                              child: Text(i.itemName,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  );
                }
            );
          }).toList(),

        )
    );

  }
}
class CommingSoonScreen extends StatefulWidget {
  @override
  _CommingSoonScreen createState() => _CommingSoonScreen();
}

class _CommingSoonScreen extends State<CommingSoonScreen> {

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
    Size size =MediaQuery.of(context).size;

    return Scaffold(

      body: Container(
        height: size.height,
        width: size.width,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
                child: SizedBox(height: 30,)
            ),
            SliverToBoxAdapter(
                child: SizedBox(width: 40,height: 40,child: Center(child: Image.asset(Assets.netflixLogo1)))
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: 30,)
            ),
            SliverToBoxAdapter(
              child:  SizedBox(width: double.infinity,height: 300,child: NoonLoopingDemo()),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: 30,)
            ),

            SliverToBoxAdapter(
              child: ContentSuggestedMovies(contentList: suggestedListMovie,),
            ),
            SliverToBoxAdapter(
              child: ContentSuggestedMovies(contentList: suggestedListMovie2,),
            ),

            SliverToBoxAdapter(
              child: ContentSuggestedMovies(contentList: suggestedListMovie3,),
            ),

          ],
        ),
      ),
    );
  }

}
