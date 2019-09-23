import 'package:flutter/material.dart';

class ProductPricePage extends StatefulWidget {
  static String tag = "product-price-page";
  @override
  ProductPricePageState createState() => ProductPricePageState();
}

class ProductPricePageState extends State<ProductPricePage> {
  // init the step to 0th position
  String dropdownValue = 'Pair';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Title
        title: Text("Product Price"),
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
            new Text("Retail Price",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            new SizedBox(
              height: 10,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Flexible(
                  child: new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        prefixText: " IDR ",
                      )),
                  flex: 9,
                ),
                SizedBox(
                  width: 20.0,
                ),
                new Flexible(
                  child: new Text("/"),
                  flex: 0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                new Flexible(
                  child: Container(
                    height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            ),
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        underline: Container(),
                       // elevation: 16,
                        style: TextStyle(color: Colors.black),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Pair', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )),
                  flex: 3,
                ),
              ],
            ),
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
            new Container(
              width: double.infinity,
              child: new RaisedButton(
                color: Colors.green,
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
