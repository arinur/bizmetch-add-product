import 'package:bizmetch/add_product_page.dart';
import 'package:bizmetch/choose_catalog_page.dart';
import 'package:bizmetch/product_price_page.dart';
import 'package:bizmetch/product_specifications_page.dart';
import 'package:bizmetch/status_stock_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'add_product_overview_page.dart';
import 'product_overview_page.dart';
import 'retail_price_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  final routes = <String, WidgetBuilder>{
    AddProductPage.tag: (context) => AddProductPage(),
    ChooseCatalogPage.tag: (context) => ChooseCatalogPage(),
    StatusStockPage.tag: (context) => StatusStockPage(),
    ProductPricePage.tag: (context) => ProductPricePage(),
    RetailPricePage.tag: (context) => RetailPricePage(),
    ProductOverviewPage.tag: (context) => ProductOverviewPage(),
    AddProductOverviewPage.tag: (context) => AddProductOverviewPage(),
    ProductSpesificationPage.tag: (context) => ProductSpesificationPage(),
  };

  @override
  Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      title: 'Bizmetch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: AddProductPage(),
      routes: routes,
    );
  }
}
