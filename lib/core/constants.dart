import 'package:flutter/material.dart';
import 'package:pob_ui/core/navigation.dart';
import 'package:pob_ui/widgets/app_custom_dialog_card.dart';
const appTitle = 'POB';

void showMyDialog(BuildContext context) {
    showDialog(
  context: context,
  builder: (context) => NewPOBWidget(
    onCancel: () => Navigator.pop(context),
    onProceed: () {
      // Handle proceed action
      Navigator.of(context).pushNamed(newPobPageRoute);
    },
  ),
);

  }