import 'package:flutter/material.dart';
import 'package:traveling_app/widgets/app_drawer.dart';

class Filterscreen extends StatelessWidget {
  const Filterscreen({Key? key}) : super(key: key);
  static const filterroute = '/filterscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة الفلترة'),
      ),
      drawer: AppDrawer(),
      body: Text('sadasdas'),
    );
  }
}
