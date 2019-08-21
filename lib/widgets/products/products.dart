import 'package:flutter/material.dart';
import './product_card.dart';

import '../../models/product.dart';

class Products extends StatelessWidget {
  final List<Product> products;
  //final Function deleteProduct;
  // Products(this.products, {this.deleteProduct}) {
  //   //print('[products widget] constructor');
  // }
  Products(this.products) {
    //print('[products widget] constructor');
  }

  // Widget _buildProductItem(BuildContext context, int index) {
  //   return ProductCard(product, productIndex);
  // }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(products[index], index),
        itemCount: products.length,
      );
    } //else {
    //   productCard = Center(
    //     child: Text('no products found please add some'),
    //   );
    // }
    else {
      productCard = Container();
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    //print('[products widget] build()');
    // TODO: implement build
    return _buildProductList();
  }
}
