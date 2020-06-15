import 'package:BmarkApp/model/bookmark.dart';
import 'package:BmarkApp/page/add_bookmark_page.dart';
import 'package:BmarkApp/page/view_bookmark_page.dart';
import 'package:flutter/material.dart';

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddBookmarkPage()),
            );
}

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context) {
  Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)),
            );
}