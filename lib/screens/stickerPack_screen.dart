import 'package:divine_gif/apis/childrenpackStickersApi.dart';
import 'package:divine_gif/models/sticker_pack_model.dart';
import 'package:divine_gif/screens/full_screen.dart';
import 'package:divine_gif/widgets/heading_title.dart';
import 'package:flutter/material.dart';

class StickersPackScreen extends StatefulWidget {
  static const routeName = '/stickerPack';
  const StickersPackScreen({super.key});

  @override
  State<StickersPackScreen> createState() => _StickerPackScreenState();
}

class _StickerPackScreenState extends State<StickersPackScreen> {
  var loader = false;
  StickerPackModel? stickerPack = StickerPackModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
  }

  void fetch() async {
    loader = true;
    stickerPack = await getStickerspackApi();
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
                  HeadingTitle(title: "Sticker Pack"),
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
                          itemCount: stickerPack!.data!.length,
                          itemBuilder: (context, index) {
                            return GridTile(
                              child: Container(
                                height: screenHeight * 0.5,
                                width: screenWidth * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) => FullScreen(
                                                imgUrl: stickerPack!
                                                    .data![index]
                                                    .images!
                                                    .original!
                                                    .url
                                                    .toString()))));
                                  },
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: stickerPack!.data![index].images!
                                                  .original!.url !=
                                              null
                                          ? Image.network(
                                              stickerPack!.data![index].images!
                                                  .original!.url
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
