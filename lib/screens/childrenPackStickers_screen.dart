import 'package:divine_gif/screens/full_screen.dart';
import 'package:flutter/material.dart';

import '../apis/childrenpackStickersApi.dart';
import '../models/childrenpack_stickers_model.dart';
import '../widgets/heading_title.dart';

class ChildrenPackStickersScreen extends StatefulWidget {
  static const routeName = '/childrenpackStickers';
  const ChildrenPackStickersScreen({super.key});

  @override
  State<ChildrenPackStickersScreen> createState() =>
      _ChildrenPackStickersScreenState();
}

class _ChildrenPackStickersScreenState
    extends State<ChildrenPackStickersScreen> {
  var loader = false;
  ChildrenpackStickersModel? childrenPackSticker = ChildrenpackStickersModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
  }

  void fetch() async {
    loader = true;
    childrenPackSticker = await getChildrenpackStickersApi();
    print('???');
    print(childrenPackSticker!.data![11].featuredGif.toString());
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
                  HeadingTitle(title: "Children Pack Sticker Listing"),
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
                          itemCount: childrenPackSticker!.data!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => FullScreen(
                                            imgUrl: childrenPackSticker!
                                                .data![index]
                                                .featuredGif!
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
                                      child: childrenPackSticker!
                                                  .data![index].featuredGif !=
                                              null
                                          ? Image.network(
                                              childrenPackSticker!
                                                  .data![index]
                                                  .featuredGif!
                                                  .images!
                                                  .original!
                                                  .url
                                                  .toString(),
                                              fit: BoxFit.fill,
                                            )
                                          : Center(
                                              child: Text(
                                                "Sticker not available",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )),
                                ),
                              ),
                            );
                          }))
                ]),
              ));
  }
}
