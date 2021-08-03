import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final bool isCollapsed;
  final String name;
  final String routeName;
  final IconData icon;

  const MenuItem({
    Key? key,
    required this.isCollapsed,
    required this.name,
    required this.icon,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: isCollapsed == false ? Text(name) : null,
      leading: Tooltip(
        message: name,
        waitDuration: isCollapsed == true ? null : Duration(days: 9999),
        child: Icon(
          icon,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
    );
  }
}
