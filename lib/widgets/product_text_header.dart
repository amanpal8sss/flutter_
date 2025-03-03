import 'package:flutter/material.dart';

const _headerTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 16.0,
);

class ProductTextHeader extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  const ProductTextHeader({
    super.key,
    required this.label,
    this.textAlign = TextAlign.end,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        label,
        textAlign: textAlign,
        style: _headerTextStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
