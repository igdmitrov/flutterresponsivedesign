import 'package:flutter/material.dart';
import '../shared/app_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      pageName: 'Home',
      child: Container(
        color: Colors.grey,
        child: Center(
          child: Text('Home page'),
        ),
      ),
    );
  }
}
