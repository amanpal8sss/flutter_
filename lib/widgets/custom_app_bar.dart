import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final List<Widget>? actions;
  const CustomAppBar({
    super.key,
    required this.pageTitle,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFCF5DF),
      title: Padding(
        padding: EdgeInsets.only(right: 28.0),
        child: Text(
          pageTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: actions,
    );
  }

@override
Size get preferredSize => AppBar().preferredSize;

}
