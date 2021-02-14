import 'package:flutter/cupertino.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';
import 'package:flutter/material.dart';

class ContentMovies extends StatelessWidget {
  final Size size;
  final List<Content> contentListMovies;

  const ContentMovies({
    Key key,
    @required this.size,
    @required this.contentListMovies,
  }) : super(key: key);

//  _openUrl (String mylink){
//    var url = mylink;
//    launch(url);
//  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'PAPULAR SEARCHES',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
          Container(
            height: 500,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              scrollDirection: Axis.vertical,
              itemCount: contentListMovies.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentListMovies[index];
                return GestureDetector(
                  // onTap : _openUrl(content.linkur),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(content.imageUrl),
                                  fit: BoxFit.cover),
                            )),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              content.name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Watch your favorit movie online',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
