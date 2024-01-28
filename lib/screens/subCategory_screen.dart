import 'package:divine_gif/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../apis/categoriesApi.dart';
import '../models/categories_model.dart';
import '../widgets/heading_title.dart';

// ignore: must_be_immutable
class SubCategoryScreen extends StatefulWidget {
  String catName;
  int index;
  static const routeName = '/subCategory';

  SubCategoryScreen({super.key, required this.catName, required this.index});

  @override
  State<SubCategoryScreen> createState() =>
      _SubCategoryScreenState(catName, index);
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  String catName;
  int index;
  _SubCategoryScreenState(this.catName, this.index);
  // List<SubCategoryModel>? subcatList = [];
  var loader = false;
  CategoriesModel? catmodel = CategoriesModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
  }

  void fetch() async {
    loader = true;
    catmodel = await getCategoriesApi();
    print('???');

    print(catmodel!.data![1].subcategories![1].name.toString());
    setState(() {
      loader = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    int iterator = index;
    print(iterator);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Trending Gif",
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
            HeadingTitle(
              title: catName,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                height: screenHeight * 0.83,
                child: FutureBuilder<CategoriesModel>(
                  future: getCategoriesApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: screenWidth * 0.03,
                                  mainAxisSpacing: screenHeight * 0.02,
                                  mainAxisExtent: screenHeight * 0.08),
                          itemCount:
                              snapshot.data!.data![index].subcategories!.length,
                          itemBuilder: ((context, i) => InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => SearchScreen(
                                              query: snapshot.data!.data![index]
                                                  .subcategories![i].name
                                                  .toString()))));
                                },
                                child: GridTile(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            const Color(0xFFFF8C3B),
                                            const Color(0xFFFE524B)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15))),
                                    child: Center(
                                      child: Text(
                                        snapshot.data!.data![index]
                                            .subcategories![i].name
                                            .toString(),
                                        style: GoogleFonts.calistoga(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
