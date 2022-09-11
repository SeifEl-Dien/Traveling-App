import 'package:flutter/material.dart';
import 'package:traveling_app/app_date.dart';

class TripDetailsScreen extends StatelessWidget {
  static const detailsroute = '/tripdetailsscreen';
  Widget buildtitletext(BuildContext context, String titletext) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      alignment: Alignment.topRight,
      child: Text(
        titletext,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildlistviewcontainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(1)),
        height: 200,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final tripid = ModalRoute.of(context)!.settings.arguments as String;
    final selectedtrip = Trips_data.firstWhere((trip) => trip.id == tripid);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedtrip.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedtrip.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildtitletext(context, 'الأنشطة'),
              buildlistviewcontainer(
                ListView.builder(
                  itemCount: selectedtrip.activities.length,
                  itemBuilder: (context, index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(selectedtrip.activities[index]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildtitletext(context, 'البرنامج اليومي'),
              buildlistviewcontainer(ListView.builder(
                  itemCount: selectedtrip.program.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          ListTile(
                            leading:
                                CircleAvatar(child: Text('يوم ${index + 1}')),
                            title: Text(selectedtrip.program[index]),
                          ),
                          Divider(),
                        ],
                      ))),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ));
  }
}
