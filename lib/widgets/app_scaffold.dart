import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final bool useSafeArea;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? body;
  const AppScaffold({
    super.key,
    this.backgroundColor,
    this.appBar,
    this.body,
    this.useSafeArea = true,
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: useSafeArea 
      ? SafeArea(child: body ?? const SizedBox(),
      )
      :body,
      backgroundColor: backgroundColor,
    );
  }
}