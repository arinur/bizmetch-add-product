import 'package:flutter/material.dart';

class ProductOverviewPage extends StatefulWidget {
  static String tag = "product-overview-page";
  @override
  ProductOverviewPageState createState() => ProductOverviewPageState();
}

class ProductOverviewPageState extends State<ProductOverviewPage> {
  // init the step to 0th position
  String dropdownValue = 'Pair';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Title
        title: Text("Product Overview"),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed:() => Navigator.pop(context, false),
      ),
      ),
      // Body
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("Product Description",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14)),
                new SizedBox(
                  width: 10,
                ),
                new Text("(Max 500 Character)",
                    style: new TextStyle(fontSize: 14)),
              ],
            ),
            new SizedBox(
              height: 10,
            ),
            new TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                maxLength: 500,
                decoration: InputDecoration(
                  hintText: "Input Product Description",
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                )),
            new SizedBox(
              height: 10,
            ),
            new Text("Feature or Benefits",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            new SizedBox(
              height: 10,
            ),
            new TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  hintText: "Input Feature Or Benefit",
                )),
            new SizedBox(
              height: 10,
            ),
            new GestureDetector(
              child: new Text("+ Add Wholesale Price",
                  style: TextStyle(
                      color: Colors.orange,
                      decoration: TextDecoration.underline)),
              onTap: () {},
            ),
            new SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: new Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: new RaisedButton(
          color: Colors.green,
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
