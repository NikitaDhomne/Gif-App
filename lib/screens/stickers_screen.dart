import 'package:divine_gif/screens/childrenPackStickers_screen.dart';
import 'package:divine_gif/screens/full_screen.dart';
import 'package:divine_gif/screens/listingPackStickers_screen.dart';
import 'package:divine_gif/screens/stickerPack_screen.dart';
import 'package:divine_gif/screens/trending_stickers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../apis/trendingStickersApi.dart';
import '../models/trending_stickers_model.dart';
import '../widgets/heading_title.dart';
import '../widgets/sticker_widget.dart';

class StickersScreen extends StatefulWidget {
  static const routeName = '/stickers';
  const StickersScreen({super.key});

  @override
  State<StickersScreen> createState() => _StickersScreenState();
}

class _StickersScreenState extends State<StickersScreen> {
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
          "Stickers",
        ),
        elevation: 0,
      ),
      body: loader
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SearchBar(),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  HeadingTitle(title: "Select Packs"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: StickerWidget(
                                  "Children Sticker Pack", 0xff9A5CED),
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    ChildrenPackStickersScreen.routeName);
                              },
                            ),
                            InkWell(
                              child: StickerWidget("Listing", 0XFFF75E36),
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    ListingPackStickersScreen.routeName);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: StickerWidget("Stickers", 0XFF5D76ED),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(StickersPackScreen.routeName);
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Trending Stickers",
                            style: GoogleFonts.lato(
                                fontSize: 20, fontWeight: FontWeight.w900)),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(TrendingStickers.routeName);
                          },
                          child: Text("View More...",
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    height: screenHeight * 0.25,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: 15,
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
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  height: screenHeight * 0.5,
                                  width: screenWidth * 0.4,
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
                            ))),
                  ),
                ],
              ),
            ),
    );
  }
}
