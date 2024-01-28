import 'package:divine_gif/screens/full_screen.dart';
import 'package:flutter/material.dart';

import '../apis/emogiApi.dart';
import '../models/emogi_model.dart';
import '../widgets/heading_title.dart';

class EmogiScreen extends StatefulWidget {
  static const routeName = '/emogi';
  const EmogiScreen({super.key});

  @override
  State<EmogiScreen> createState() => _EmogiScreenState();
}

class _EmogiScreenState extends State<EmogiScreen> {
  var loader = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Emogi",
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar(),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            HeadingTitle(title: "Emogi"),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                height: screenHeight * 0.85,
                child: FutureBuilder<EmogiModel>(
                  future: getEmogiApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: screenWidth * 0.03,
                                  mainAxisSpacing: screenHeight * 0.02,
                                  mainAxisExtent: screenHeight * 0.15),
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: ((context, index) => InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => FullScreen(
                                              imgUrl: snapshot
                                                  .data!
                                                  .data![index]
                                                  .images!
                                                  .original!
                                                  .url
                                                  .toString()))));
                                },
                                child: GridTile(
                                  child: Center(
                                    child: Container(
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.5,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              stops: [
                                                0.2,
                                                0.5,
                                                0.7,
                                                1
                                              ],
                                              colors: [
                                                Colors.black12,
                                                Colors.grey,
                                                Colors.black54,
                                                Colors.black45
                                              ])),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          snapshot.data!.data![index].images!
                                              .original!.url
                                              .toString(),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ))
          ]),
        ));
  }
}
