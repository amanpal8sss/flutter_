import 'package:flutter/material.dart';
import 'package:pob_ui/models/key_value_pair.dart';
import 'package:pob_ui/widgets/app_bar_custom_button.dart';
import 'package:pob_ui/widgets/app_card_bottom.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';
import 'package:pob_ui/widgets/custom_app_card.dart';
import 'package:pob_ui/widgets/custom_app_card_head.dart';

class PobPage extends StatelessWidget {
  const PobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: const Color(0xFFFCF5DF),
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
                    KeyValuePair(key: 'Speciality', value: 'Dermatalogist'),
                    KeyValuePair(key: 'Area', value: 'Lower Parel'),
                    
                  ]),
                   Padding(padding: const EdgeInsets.symmetric(vertical: 22.0).copyWith(left: 12.0),
                   child: Text('Prescription Order Booking',
                   style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                   ),
                   ),
                   ), 
                    CustomAppCardHead(
                  headerLabel1: 'Product',
                  headerLabel2: 'Order Qty',
                  content: [
                    KeyValuePair(key: 'Doctor', value: 'Dr. Amir Dahliwal'),
                    KeyValuePair(key: 'Speciality', value: 'Dermatalogist'),
                    KeyValuePair(key: 'Area', value: 'Lower Parel'),
                    
                  ],
                  child:AppCardBottom(content1: 'Total Value', content2: 'Rs 12,000',),

                  ),
            ],
           
          ),
        ),
      ),
    );
  }
}
