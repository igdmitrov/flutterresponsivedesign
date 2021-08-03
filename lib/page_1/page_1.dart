import 'package:flutter/material.dart';
import '../shared/app_layout.dart';

class Page1 extends StatelessWidget {
  static const routerName = '/page1';
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      pageName: 'Page 1',
      child: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text('Page 1'),
        ),
      ),
    );
  }
}
