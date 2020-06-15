import 'package:BmarkApp/model/bookmark.dart';
import 'package:BmarkApp/widget/Bookmark_grid_item_widget.dart';
import 'package:flutter/material.dart';


class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark>  bookmarksList;

  BookmarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          childAspectRatio: 1.25,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
        itemCount: bookmarksList.length,
        itemBuilder: (BuildContext context, int index) {
          return BookmarkGridItemWidget(bookmarksList[index]);

        }),
    );
          }

        }