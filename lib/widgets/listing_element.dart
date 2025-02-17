import 'package:flutter/material.dart';


class ListingElement extends StatelessWidget {
  final String detailsPageRouteName;
  final int elementIndex;
  final String subtitleText;
  const ListingElement({
    super.key,
    required this.detailsPageRouteName,
    required this.elementIndex,
    required this.subtitleText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>  Navigator.of(context).pushNamed(detailsPageRouteName),
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: ColoredBox(
          color: const Color(0xFFFAEED2),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 6.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    '17',
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                Text(
                  "Feb '25",
                  style: const TextStyle(fontSize: 11),
                ),
              ],
            ),
          ),
        ),
      ),
      title: const Text("Dr. Amir Dhaliwal"),
      subtitle: Text(subtitleText),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15.0,
      ),
    );
  }
}
