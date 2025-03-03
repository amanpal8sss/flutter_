import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/custom_product_card.dart';
import 'package:pob_ui/widgets/listing_divider.dart';

const _borderRadius = Radius.circular(15.0);

class ProductDetailingCard extends StatelessWidget {
  const ProductDetailingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFCF5DF), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:  Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: _borderRadius,
                topRight: _borderRadius,
              ),
              child: ColoredBox(
                color: const Color(0xFFF8EBCB),
                child: const CustomProductCard(
                  titleRow: true,
                  label: "Product",
                  value1: "Order Qty.",
                ),
              ),
            ),
            const SizedBox(height: 6.5),
            CustomProductCard(
              label: "Lorem Ipsum",
              value1: "5",
            ),
            CustomProductCard(
              label: "Dignissim",
              value1: "0",
            ),
            CustomProductCard(
              label: "Nulla Facilisi",
              value1: "3",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListingDivider(),
            ),
            CustomProductCard(
              bottomRow: true,
              label: "Total Value",
              value1: "₹1,021.0",
            ),
            const SizedBox(height: 15),
          ],
        ),
    );
  }
}
