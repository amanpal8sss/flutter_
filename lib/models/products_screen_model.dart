import 'package:flutter/material.dart';

class ProductModel {
  final String product;
  bool isChecked;
  TextEditingController orderQty; 

  ProductModel({
    required this.product,
    this.isChecked = false,
    required this.orderQty,
  });
}
