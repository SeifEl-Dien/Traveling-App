import 'package:flutter/material.dart';
import 'package:traveling_app/screens/filter_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  Widget buildlisttile(IconData icon, String text, Function()? ontaplink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontSize: 24, fontFamily: 'ElMessiri', fontWeight: FontWeight.bold),
      ),
      onTap: ontaplink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'adfadf',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildlisttile(Icons.card_travel, 'الرحلات', () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildlisttile(Icons.filter_list, 'الفلترة', () {
            Navigator.of(context)
                .pushReplacementNamed(Filterscreen.filterroute);
          }),
        ],
      ),
    );
  }
}
