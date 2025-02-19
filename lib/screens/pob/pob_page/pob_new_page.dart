import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/app_bar_custom_button.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';
import 'package:pob_ui/widgets/custom_form_text_field.dart';

class PobNewPage extends StatelessWidget {
  const PobNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchField=CustomSearchBar(
      hintText: "select product",
    );
    return AppScaffold(
      backgroundColor: const Color(0xFFFCF5DF),
        appBar: CustomAppBar(
          pageTitle: 'New',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: AppBarActionButton(
                labelText: "Save",
                onPressed: () => print("object"),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0)
                    .copyWith(bottom: 20.0, top: 15.0),
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
                ],
              ),
            ),
          ],
        ));
  }
}
