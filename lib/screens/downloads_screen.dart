import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({Key key}) : super(key: key);

  @override
  _DownloadsScreen createState() => _DownloadsScreen();
}

class _DownloadsScreen extends State<DownloadsScreen> {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() {});

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: size.width,
            height: 50,
            color: Colors.black,
            child: Row(
              children: [
                Expanded(
                    flex: 0,
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.info, color: Colors.white),
                    )),
                Expanded(
                    flex: 0,
                    child: Text(
                      'Smart Downloads',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                Expanded(
                    flex: 0,
                    child: Text(
                      ' ON',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )),
                Expanded(
                    flex: 2,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.edit, color: Colors.white),
                        )))
              ],
            ),
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xFF2c2c2c),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(backgroundColor: Color(0xFFEB8686)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Alex',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 125.0,
                        width: 172.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/sintel.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sintel',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              '2:35|1.5GB',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFBDBBBB)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 0,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                            onPressed: null))
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 125.0,
                        width: 172.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/explained.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Explained',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              '1:22|1GB',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFBDBBBB)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 0,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                            onPressed: null))
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(backgroundColor: Color(0xFFE86EB9C)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Sara',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 125.0,
                        width: 172.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/dark.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dark',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              '1o Episoades|2.5GB',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFBDBBBB)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 0,
                        child: IconButton(
                            icon: Icon(
                              Icons.timelapse,
                              color: Colors.blue,
                              size: 25,
                            ),
                            onPressed: null))
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(backgroundColor: Color(0xFFE8E86EB)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Kids',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Container(
                            height: 125.0,
                            width: 182.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/atla.jpg'),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Container(
                            height: 125,
                            width: 182,   color: Colors.black.withOpacity(0.6),

                          ),
                          Center(
                              child: Container(
                                  height: 125,
                                  width: 182,
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.play_circle_outline,
                                        size: 56,
                                        color: Colors.white,
                                      ),
                                      onPressed: null)))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Avatar',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              '1h 32m|2GB',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFFBDBBBB)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 0,
                        child: IconButton(
                            icon: Icon(
                              Icons.panorama_fish_eye_sharp,
                              color: Colors.blue,
                              size: 25,
                            ),
                            onPressed: null))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
