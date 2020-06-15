import 'package:BmarkApp/util/navigation_util.dart';
import 'package:flutter/material.dart';
import 'package:BmarkApp/model/bookmark.dart';


class BookmarkGridItemWidget extends StatelessWidget {
 final Bookmark bookmark;

  BookmarkGridItemWidget(this.bookmark);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: (){
              navigateToViewBookmarkPage(bookmark, context);
            },


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(bookmark.title, style: Theme.of(context).textTheme.headline5,),
              SizedBox(height: 6),
              Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1,),
              SizedBox(height: 6),
              Hero(tag: bookmark.link, child: Icon(Icons.star)),
            ],
          ),
        ),
      ),
    );
  }  
}