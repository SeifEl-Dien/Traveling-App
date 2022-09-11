import 'package:flutter/material.dart';
import 'package:traveling_app/app_date.dart';
import 'package:traveling_app/models/category.dart';
import 'package:traveling_app/models/trip.dart';
import 'package:traveling_app/widgets/trip_item.dart';

class Categoriestripsscreen extends StatelessWidget {
  static const tripsroute = '/cattrips';
  @override
  Widget build(BuildContext context) {
    final routeargument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryid = routeargument['id'];
    final categorytitle = routeargument['title'];
    final filterdata = Trips_data.where((trip) {
      return trip.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: ListView.builder(
        itemCount: filterdata.length,
        itemBuilder: (ctx, index) {
          return Tripitem(
            title: filterdata[index].title,
            imageUrl: filterdata[index].imageUrl,
            duration: filterdata[index].duration,
            tripType: filterdata[index].tripType,
            season: filterdata[index].season,
            id: filterdata[index].id,
          );
        },
      ),
    );
  }
}
