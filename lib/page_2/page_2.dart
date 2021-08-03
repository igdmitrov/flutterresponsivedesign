import 'package:flutter/material.dart';
import '../shared/app_layout.dart';

class Page2 extends StatelessWidget {
  static const routerName = '/page2';
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      pageName: 'Page 2',
      child: Container(
        color: Colors.brown,
        child: Center(
          child: Text('Page 2'),
        ),
      ),
    );
  }
}
