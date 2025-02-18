import 'package:flutter/material.dart';
import 'package:pob_ui/models/key_value_pair.dart';
import 'package:pob_ui/widgets/app_bar_custom_button.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';
import 'package:pob_ui/widgets/custom_app_card.dart';

class PobPage extends StatelessWidget {
  const PobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        pageTitle: 'POB Details',
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: AppBarActionButton(
              labelText: 'Edit',
              icon: Icons.edit,
              onPressed: () {
                print('write navigate function');
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 22.0).copyWith(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppCard(
                  headerIcon: Icons.house_siding,
                  headerLabel: '18 Feb 2025',
                  content: [
                    KeyValuePair(key: 'Doctor', value: 'Dr. Amir Dahliwal'),
                    KeyValuePair(key: 'Chemist', value: 'Moiz Pharmacy'),
                    KeyValuePair(key: 'Product', value: 'Moiz'),
                    KeyValuePair(key: 'Quantity', value: '45'),
                    KeyValuePair(key: 'Potential Qty.', value: '100'),
                    KeyValuePair(key: 'Objective Qty.', value: '120'),
                    KeyValuePair(key: 'Customer action', value: 'Converted'),
                  ]),
                   Padding(padding: const EdgeInsets.symmetric(vertical: 22.0).copyWith(left: 12.0),
                   child: Text('Prescription Order Booking',
                   style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                   ),)                  ,
                   ),
            ],
           
          ),
        ),
      ),
    );
  }
}
