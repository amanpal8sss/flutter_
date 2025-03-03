import 'package:flutter/material.dart';

TextStyle _textStyle(bool boldRow) => TextStyle(
      fontSize: 16.0,
      fontWeight: boldRow ? FontWeight.w500 : FontWeight.w300,
    );

class CustomProductCard extends StatelessWidget {
  final bool titleRow;
  final bool bottomRow;
  final String label;
  final String value1;
  const CustomProductCard({
    super.key,
    this.titleRow = false,
    this.bottomRow = false,
    required this.label,
    required this.value1,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = _textStyle(titleRow || bottomRow);
    Text textWidget(
      String value, [
      TextAlign textAlign = TextAlign.end,
      Color? textColor,
    ]) =>
        Text(
          value,
          textAlign: textAlign,
          maxLines: titleRow ? 1 : null,
          overflow: titleRow ? TextOverflow.ellipsis : null,
          style: textStyle.copyWith(
            color: textColor ?? const Color(0xFF30271C),
          ),
        );
    return Padding(
      padding: EdgeInsets.only(
        left: 22.0,
        right: 40.0,
        top: titleRow ? 17.0 : 7.0,
        bottom: titleRow ? 17.0 : 7.0,
      ),
      child: Row(
        
        children: [
          Expanded(
            child: textWidget(
              label,
              TextAlign.start,
              titleRow
                  ? const Color(0xFF30271C)
                  : const Color(0xFF6F6D7D),
            ),
          ),
          Expanded(
            child: textWidget(
              value1,
            ),
          ),
        ],
      ),
    );
  }
}
