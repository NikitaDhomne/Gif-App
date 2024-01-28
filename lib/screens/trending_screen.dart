import 'package:divine_gif/screens/full_screen.dart';
import 'package:flutter/material.dart';

import '../apis/trendingApi.dart';
import '../models/trending_model.dart';

class TrendingScreen extends StatefulWidget {
  static const routeName = '/trending';
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  bool loader = true;
  List<TrendingGifModel>? trendingGifList;
  GetTrendingGifs() async {
    trendingGifList = await TrendingApiGif.getTrendingGifs();
    setState(() {
      loader = false;
    });
  }

  @override
  void initState() {
    super.initState();
    GetTrendingGifs();
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
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                      height: screenHeight * 0.9,
                      child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: screenWidth * 0.03,
                                  mainAxisSpacing: screenHeight * 0.02,
                                  mainAxisExtent: screenHeight * 0.2),
                          itemCount: trendingGifList!.length,
                          itemBuilder: ((context, index) => InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => FullScreen(
                                                imgUrl: trendingGifList![index]
                                                    .imgSrc,
                                              ))));
                                },
                                child: GridTile(
                                  child: Container(
                                    height: screenHeight * 0.5,
                                    width: screenWidth * 0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        trendingGifList![index].imgSrc,
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
