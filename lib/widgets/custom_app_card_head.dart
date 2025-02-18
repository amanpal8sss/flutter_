import 'package:flutter/material.dart';
import 'package:pob_ui/models/key_value_pair.dart';

const cardBorderRadius = BorderRadius.all(Radius.circular(15.0));
const borderRadius = Radius.circular(15.0);

class CustomAppCardHead extends StatelessWidget {
  final String headerLabel1;
  final String headerLabel2;
  final List<KeyValuePair> content;
  final Widget? child;

  const CustomAppCardHead({
    super.key,
    required this.headerLabel1,
    required this.headerLabel2,
    required this.content,
    this.child,
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
                  color: const Color(0xFFFBF3D8),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text(
                        headerLabel1,
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                       Text(
                        headerLabel2,
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      ],
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
                            color: const Color(0xFF6F6D7D),
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
