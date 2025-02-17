import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';

class PobNewPage extends StatelessWidget {
  const PobNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: CustomAppBar(pageTitle: 'New'),
    );
  }
}