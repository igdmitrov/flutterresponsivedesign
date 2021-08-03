import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'sidebar_items.dart';

class AppLayout extends StatelessWidget {
  static int _phoneWidth = 768;

  final String pageName;
  final Widget child;
  const AppLayout({Key? key, required this.pageName, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final isSmall = constraints.maxWidth < _phoneWidth;

      return Scaffold(
        appBar: AppBar(
          title: Text('APP_NAME - $pageName'),
          centerTitle: false,
        ),
        drawer: isSmall
            ? Drawer(
                child: SidebarItems(),
              )
            : null,
        body: Container(
          child: Row(
            children: [
              if (isSmall == false) Sidebar(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      );
    });
  }
}
