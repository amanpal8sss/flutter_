import 'package:flutter/material.dart';
import 'package:pob_ui/models/key_value_pair.dart';

const cardBorderRadius = BorderRadius.all(Radius.circular(15.0));
const borderRadius = Radius.circular(15.0);

class CustomAppCard extends StatelessWidget {
  final IconData headerIcon;
  final String headerLabel;
  final List<KeyValuePair> content;

  const CustomAppCard({
    super.key,
    required this.headerIcon,
    required this.headerLabel,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        elevation: 0.1,
        borderRadius: cardBorderRadius,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFCF5DF),
            borderRadius: cardBorderRadius,
            border: Border.all(color: Colors.black26.withValues(alpha: 0.08)),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: borderRadius,
                  topRight: borderRadius,
                ),
                child: ColoredBox(
                  color: const Color(0xFFF8EBCB),
                  child: ListTile(
                    leading: Icon(
                      headerIcon,
                      color: Colors.black45,
                    ),
                    title: Text(
                      headerLabel,
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 5.0,
                  left: 18.0,
                  right: 40.0,
                ),
                child: Column(
                  children: [
                    for (var i = 0; i < content.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                      child: Row(
                         crossAxisAlignment: i == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Flexible(child: Padding(padding: const EdgeInsets.only(right: 5.0),
                         child: Text(
                          content[i].key,
                          style: TextStyle(
                            fontSize: 16.5,
                            color: const Color(0xFF6F6D7D),
                          ),
                         ),
                         )
                         ),
                         Flexible(child: Text(
                          content[i].value,
                          style: TextStyle(
                            fontSize: 16.5,
                            color:  Colors.black,
                          ),
                          textAlign: TextAlign.end,
                         ))
                        ],
                      ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
