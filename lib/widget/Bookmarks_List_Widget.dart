import 'package:BmarkApp/model/bookmark.dart';
import 'package:BmarkApp/widget/Bookmark_List_item_widget.dart';
import 'package:flutter/material.dart';


class BookmarksListWidget extends StatelessWidget {
  final List<Bookmark>  bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarksList.length,
      itemBuilder: (BuildContext context, int index) {
        return BookmarkListItemWidget(bookmarksList[index]);

      });
          }

        }