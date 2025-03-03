import 'package:flutter/material.dart';
import 'package:pob_ui/models/products_screen_model.dart';
import 'package:pob_ui/widgets/app_scaffold.dart';
import 'package:pob_ui/widgets/custom_app_bar.dart';
import 'package:pob_ui/widgets/product_quantity_text_field.dart';
import 'package:pob_ui/widgets/product_text_header.dart';


const _dummyProducts = [
  "Lorem Ipsum",
  "Pulvinar",
  "Nunc Rhoncus",
  "Massa Tincidu",
  "Venenatis",
  "Dignissim",
];

final _products = _dummyProducts
    .map(
      (e) => ProductModel(
        product: e,
        orderQty: TextEditingController(),
      ),
    )
    .toList();

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  void _onChecked(int i, bool? value) {
    _products[i].isChecked = value ?? false;
    if (value != false) return;
    _products[i].orderQty.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.0).copyWith(
            top: 20.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
              ),
              const SizedBox(height: 27),
              Expanded(
                child: LayoutBuilder(
                  builder: (_, boxConstraints) => SizedBox(
                    width: boxConstraints.maxWidth > 850 ? 850 : null,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: ProductTextHeader(
                                label: "Product",
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ProductTextHeader(
                                label:"Order Qty.",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView.builder(
                            itemCount: _products.length + 1,
                            itemBuilder: (_, i) => i == _products.length
                                ? const SizedBox(height: 30)
                                : StatefulBuilder(
                                    builder: (_, setState) => Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: Checkbox(
                                              value: _products[i].isChecked,
                                              activeColor:
                                                   const Color(0xFFAA3F00),
                                              checkColor: Colors.white,
                                              side: BorderSide(
                                                width: 2,
                                                color: const Color(0xFFAA3F00),
                                              ),
                                              onChanged: (value) => setState(
                                                () => _onChecked(i, value),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20.0),
                                              child: Text(
                                                _products[i].product,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: ProductQuantityTextField(
                                            isEnabled: _products[i].isChecked,
                                            controller: _products[i].orderQty,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
