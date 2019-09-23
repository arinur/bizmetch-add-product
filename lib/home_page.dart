import 'package:bizmetch/add_product_overview_page.dart';
import 'package:bizmetch/choose_catalog_page.dart';
import 'package:bizmetch/product_overview_page.dart';
import 'package:bizmetch/product_price_page.dart';
import 'package:bizmetch/product_specifications_page.dart';
import 'package:bizmetch/retail_price_page.dart';
import 'package:bizmetch/status_stock_page.dart';
import 'package:flutter/material.dart';

import 'add_product_page.dart';

class HomePage extends StatefulWidget {
  static String tag = "home-page";
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // init the step to 0th position
//  String dropdownValue = 'Pair';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Title
        title: Text("Home"),
      ),
      // Body
      body:Container(
        margin: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Add Product",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddProductPage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Add Product Overview",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddProductOverviewPage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Choose Catalog",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ChooseCatalogPage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Product Overview",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProductOverviewPage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Product Price",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProductPricePage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Product Spesification",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProductSpesificationPage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Retail Price",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RetailPricePage.tag);
                  },
                ),
                new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Status Stock",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(StatusStockPage.tag);
                  },
                ),
          ],
      ),
      ) 
    );
  }
}
