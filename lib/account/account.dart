import 'package:flutter/material.dart';
import '../shared/app_layout.dart';

class Account extends StatelessWidget {
  static const routerName = '/account';
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      pageName: 'Account',
      child: Container(
        color: Colors.amber,
        child: Center(
          child: Text('Account'),
        ),
      ),
    );
  }
}
