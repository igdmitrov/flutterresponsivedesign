import 'package:flutter/material.dart';
import '../account/account.dart';
import '../page_1/page_1.dart';
import '../page_2/page_2.dart';

import 'menu_item.dart';

class SidebarItems extends StatelessWidget {
  final isCollapsed;
  SidebarItems({
    Key? key,
    this.isCollapsed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: ListTile.divideTiles(
              context: context,
              tiles: [
                MenuItem(
                  name: 'Home',
                  routeName: Navigator.defaultRouteName,
                  icon: Icons.home,
                  isCollapsed: isCollapsed,
                ),
                MenuItem(
                  name: 'Page 1',
                  routeName: Page1.routerName,
                  icon: Icons.pages,
                  isCollapsed: isCollapsed,
                ),
                MenuItem(
                  name: 'Page 2',
                  routeName: Page2.routerName,
                  icon: Icons.pages,
                  isCollapsed: isCollapsed,
                ),
              ],
            ).toList(),
          ),
        ),
        MenuItem(
          name: 'Account',
          routeName: Account.routerName,
          icon: Icons.account_circle_sharp,
          isCollapsed: isCollapsed,
        ),
      ],
    );
  }
}
