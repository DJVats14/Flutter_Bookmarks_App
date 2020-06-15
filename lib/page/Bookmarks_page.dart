import 'package:BmarkApp/model/bookmark.dart';
//import 'package:BmarkApp/page/add_bookmark_page.dart';
import 'package:BmarkApp/util/navigation_util.dart';
import 'package:BmarkApp/widget/Bookmarks_Grid_Widget.dart';
import 'package:BmarkApp/widget/Bookmarks_List_Widget.dart';
import 'package:flutter/material.dart';

class BookmarksPage extends StatefulWidget {
  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  bool isGridMode  = false;
  List<Bookmark> bookmarksList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bookmarks App"),
          actions: <Widget>[
            IconButton(
              icon: isGridMode
                  ? Icon(Icons.list, color: Colors.white)
                  : Icon(Icons.grid_on, color:Colors.white),
              onPressed: () {
                setState(() {
                  isGridMode = !isGridMode ;
                });

              },
            )
          ],
        ),
        body: isGridMode ? BookmarksGridWidget(bookmarksList):
                            BookmarksListWidget(bookmarksList),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          onPressed: () {
            onAddButtonPressed(context);
          },
          label: Text("Add"),
          ),
        );
      }

void onAddButtonPressed(BuildContext context) async {
  final result = await navigateToAddBookmarkPage(context);

  if(result!=null && result is Bookmark) {
    setState(() {
       bookmarksList.add(result);
    });
   
  }
}
}