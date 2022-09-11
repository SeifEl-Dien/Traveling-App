import 'package:flutter/material.dart';
import 'package:traveling_app/app_date.dart';
import 'package:traveling_app/widgets/category_item.dart';

class Categoriesscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        // padding: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        children: Categories_data.map((categorydata) => CategoryItem(
            id: categorydata.id,
            title: categorydata.title,
            imgurl: categorydata.imageUrl)).toList());
  }
}
