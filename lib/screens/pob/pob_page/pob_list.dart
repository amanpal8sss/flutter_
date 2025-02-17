import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/app_list_page.dart';
import '../../../core/navigation.dart';


class PobList extends StatelessWidget {
  const PobList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppList(
      subtitleText: "24x7 pharmacy",
      searchFieldHintText: 'Dr. Amir Dhaliwal',
      appBarTitleText: 'POB',
      detailsPageRouteName: pobDetailPageRoute,
      newFormPageRouteName: newPobPageRoute,
    );
  }
}
