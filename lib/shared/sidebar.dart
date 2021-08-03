import 'package:flutter/material.dart';

import 'sidebar_items.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      color: Colors.indigo,
      child: ListTileTheme(
        iconColor: Colors.white70,
        child: SidebarItems(
          isCollapsed: true,
        ),
      ),
    );
  }
}
