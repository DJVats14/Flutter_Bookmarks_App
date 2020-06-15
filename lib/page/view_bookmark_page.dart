import 'package:BmarkApp/model/bookmark.dart';
import 'package:BmarkApp/widget/view_web_page_widget.dart';
import 'package:flutter/material.dart';


class ViewBookmarkPage extends StatelessWidget {
  final Bookmark bookmark;
  ViewBookmarkPage(this.bookmark);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(bookmark.title),
          actions: <Widget>[
            Hero(
              tag: bookmark.link,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.star),
              ),
            ),
          ],
      ),
      body: ViewWebPageWidget(bookmark.link),
          );
        }
      }
      
       


