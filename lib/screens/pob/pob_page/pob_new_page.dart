import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/app_bar_custom_button.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';
import 'package:pob_ui/widgets/custom_form_text_field.dart';
import 'package:pob_ui/widgets/products_screen.dart';

class PobNewPage extends StatelessWidget {
  const PobNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchField = CustomSearchBar(
      hintText: "Select product",
    );

    return AppScaffold(
      backgroundColor: const Color(0xFFFCF5DF),
      appBar: CustomAppBar(
        pageTitle: 'New POB',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: AppBarActionButton(
              labelText: "Save",
              onPressed: () => debugPrint("Save button pressed"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0)
                .copyWith( top: 10.0),
            child: LayoutBuilder(
              builder: (_, constraints) {
                return constraints.maxWidth > 600
                    ? Center(
                        child: SizedBox(width: 600, child: searchField),
                      )
                    : searchField;
              },
            ),
          ),
          const Expanded(child: ProductScreen()),
        ],
      ),
    );
  }
}
