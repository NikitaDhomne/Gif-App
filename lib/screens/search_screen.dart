import 'package:divine_gif/screens/full_screen.dart';
import 'package:flutter/material.dart';

import '../apis/searchApi.dart';
import '../models/search_model.dart';

class SearchScreen extends StatefulWidget {
  String query;
  SearchScreen({super.key, required this.query});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var loader = false;
  SearchModel searchResult = SearchModel();

  void fetch() async {
    loader = true;

    searchResult = await getSearchApi(widget.query);
    print('???');

    setState(() {
      loader = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
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
          "Search Gif",
        ),
        elevation: 0,
      ),
      body: loader
          ? Center(
              child: CircularProgressIndicator(),
            )
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
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                  height: screenHeight * 0.85,
                  child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: screenWidth * 0.03,
                          mainAxisSpacing: screenHeight * 0.02,
                          mainAxisExtent: screenHeight * 0.2),
                      itemCount: searchResult.data!.length,
                      itemBuilder: ((context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => FullScreen(
                                            imgUrl: searchResult.data![index]
                                                .images!.original!.url
                                                .toString(),
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
                                    searchResult
                                        .data![index].images!.original!.url
                                        .toString(),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ))),
                )
              ]),
            ),
    );
  }
}
