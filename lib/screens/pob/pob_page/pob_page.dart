import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/app_bar_custom_button.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';

class PobPage extends StatelessWidget {
  const PobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        pageTitle: 'POB Details',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: AppBarActionButton(
              labelText: 'Edit',
              icon: Icons.edit,
              onPressed: (){
                print('write navigate function');
              },
            ),
          )
        ],
      ),
    );
  }
}
