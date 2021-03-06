import 'package:BmarkApp/page/add_bookmark_page.dart';
import 'package:BmarkApp/page/view_bookmark_page.dart';
import 'package:flutter/material.dart';

void navigateToViewBookmarkPage(BuildContext context) {
  Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ViewBookmarkPage()),
            );
}

void navigateToAddBookmarkPage(BuildContext context) {
  Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddBookmarkPage()),
            );
}