import 'package:flutter/material.dart';
import '../widgets/products/products.dart';

import '../models/product.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> products;
  //final Function addProduct;
  //final Function deleteProduct;
  //ProductsPage(this.products, this.addProduct, this.deleteProduct);
  ProductsPage(this.products);

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: _buildSideDrawer(context),
      appBar: AppBar(
        title: Text('EasyList'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          )
        ],
      ),
      //body: ProductManager(products, addProduct, deleteProduct),
      body: Products(products),
    );
  }
}
