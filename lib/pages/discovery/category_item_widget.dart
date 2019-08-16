import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_eyepetizer/entity/category_entity.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryEntity item;

  CategoryItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: FractionalOffset(0.5, 0.5),
      children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: this.item.bgPicture,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          '#${this.item.name}',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}