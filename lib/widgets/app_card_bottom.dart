import 'package:flutter/material.dart';
import 'package:pob_ui/widgets/listing_divider.dart';

class AppCardBottom extends StatelessWidget {
  final String content1;
  final String content2;
  const AppCardBottom({
    super.key,
    required this.content1,
    required this.content2,
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListingDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              content1,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(
              content2,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
