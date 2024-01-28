import 'package:flutter/material.dart';

import '../screens/search_screen.dart';

class SearchBar extends StatefulWidget {
  SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(31, 120, 120, 120),
          border: Border.all(color: Color.fromARGB(95, 147, 147, 147)),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            child: Image.asset(
              "images/earth.gif",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search Gif",
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              onSubmitted: (value) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SearchScreen(query: _searchController.text)));
              },
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SearchScreen(query: _searchController.text)));
              },
              child: Icon(Icons.search))
        ],
      ),
    );
  }
}
