import 'package:flutter/material.dart';
import 'package:spintrill/widgets/widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Color(0x54FFFFFF),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: searchTextEditingController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search username...',
                      hintStyle: TextStyle(
                        color: Colors.white54,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.search_sharp,
                      size: 35,
                      color: Colors.white,
                    ) //  Image.asset('assets/images/search.png'),),
                    ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
