import 'package:flutter/material.dart';

import 'account/account.dart';
import 'home/home_page.dart';
import 'page_1/page_1.dart';
import 'page_2/page_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP_NAME',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
      routes: {
        Account.routerName: (ctx) => Account(),
        Page1.routerName: (ctx) => Page1(),
        Page2.routerName: (ctx) => Page2(),
      },
    );
  }
}
