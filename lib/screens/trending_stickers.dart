import 'package:divine_gif/screens/full_screen.dart';
import 'package:flutter/material.dart';

import '../apis/trendingStickersApi.dart';
import '../models/trending_stickers_model.dart';
import '../widgets/heading_title.dart';

class TrendingStickers extends StatefulWidget {
  static const routeName = '/trendingstickers';
  const TrendingStickers({super.key});

  @override
  State<TrendingStickers> createState() => _TrendingStickersState();
}

class _TrendingStickersState extends State<TrendingStickers> {
  var loader = false;
  TrendingStickersModel? trendingStickersModel = TrendingStickersModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
  }

  void fetch() async {
    loader = true;
    trendingStickersModel = await getTrendingStickersApi();
    print('???');
    setState(() {
      loader = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Trending Gif",
          ),
          elevation: 0,
        ),
        body: loader
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SearchBar(),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  HeadingTitle(title: "Trending Stickers"),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                      height: screenHeight * 0.8,
                      child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: screenWidth * 0.03,
                                  mainAxisSpacing: screenHeight * 0.02,
                                  mainAxisExtent: screenHeight * 0.2),
                          itemCount: trendingStickersModel!.data!.length,
                          itemBuilder: ((context, index) => InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => FullScreen(
                                              imgUrl: trendingStickersModel!
                                                  .data![index]
                                                  .images!
                                                  .original!
                                                  .url
                                                  .toString()))));
                                },
                                child: GridTile(
                                  child: Container(
                                    height: screenHeight * 0.5,
                                    width: screenWidth * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        trendingStickersModel!
                                            .data![index].images!.original!.url
                                            .toString(),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ))))
                ]),
              ));
  }
}
