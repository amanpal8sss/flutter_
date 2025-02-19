import 'package:flutter/material.dart';
import 'package:pob_ui/core/constants.dart';
import 'package:pob_ui/widgets/app_bar_custom_button.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';
import 'package:pob_ui/widgets/custom_form_text_field.dart';
import 'package:pob_ui/widgets/listing_divider.dart';
import 'package:pob_ui/widgets/listing_element.dart';



class AppList extends StatelessWidget {
  final String subtitleText;
  final String searchFieldHintText;
  final String detailsPageRouteName;
  final String newFormPageRouteName;
  final String appBarTitleText;
  const AppList({
    super.key,
    required this.subtitleText,
    required this.searchFieldHintText,
    required this.appBarTitleText,
    required this.detailsPageRouteName,
    required this.newFormPageRouteName,
  });

  @override
  Widget build(BuildContext context) {
    final searchField = CustomSearchBar(
      hintText: "select doctor",
    );
    return AppScaffold(
      backgroundColor: const Color(0xFFFCF5DF),
        appBar: CustomAppBar(
          pageTitle: 'POB',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: AppBarActionButton(
                labelText: 'New',
                icon: Icons.add,
                onPressed: () =>
                    showMyDialog(context),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0).copyWith(
                bottom: 20.0,
                top: 15.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (_, searchFieldBoxConstraints) {
                        return searchFieldBoxConstraints.maxWidth > 600
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 600,
                                    child: searchField,
                                  ),
                                ],
                              )
                            : searchField;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.0,
                      right: 0.0,
                    ),
                    child: IconButton(
                      tooltip: 'Filter',
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list_rounded),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, i) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                  ),
                  child: ListingElement(
                    detailsPageRouteName: detailsPageRouteName,
                    elementIndex: i,
                    subtitleText: subtitleText,
                  ),
                ),
                itemCount: 7,
                itemCount: 12,
                separatorBuilder: (_, i) => const ListingDivider(),
              ),
            ),
          ],
        ),
      );
    
  }
}
