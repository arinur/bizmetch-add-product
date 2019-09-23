import 'package:flutter/material.dart';

class ProductSpesificationPage extends StatefulWidget {
  static String tag = "product-spesifications-page";
  @override
  ProductSpesificationPageState createState() =>
      ProductSpesificationPageState();
}

class ProductSpesificationPageState extends State<ProductSpesificationPage> {
  // init the step to 0th position
  String dropdownValueWidth = 'mm';
  String dropdownValueTime = 'week';
  String dropdownValueWeight = 'kg';

  Widget _rowQuickDetails() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Quick Details",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
          new SizedBox(
            height: 10,
          ),
          new Text("Product Dimensions",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
                      hintText: "Product Dimensions",
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
                      value: dropdownValueWidth,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      underline: Container(),
                      // elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueWidth = newValue;
                        });
                      },
                      items: <String>['mm', 'cm', 'Free', 'Four']
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
          new Text("Ex : 85.5 x 25 x 11.6 mm",
              style: new TextStyle(fontSize: 14, color: Colors.grey)),
          new SizedBox(
            height: 10,
          ),
          new Text("SKU",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Input SKU",
              )),
          new SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _rowSupplyAbility() {
    return new Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Supply Ability",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
          new SizedBox(
            height: 10,
          ),
          new Text("Supply Ability",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
                      hintText: "Input Supply Ability",
                    )),
                flex: 6,
              ),
              SizedBox(
                width: 10.0,
              ),
              new Flexible(
                child: new Text("/"),
                flex: 0,
              ),
              SizedBox(
                width: 10.0,
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
                      value: dropdownValueTime,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      underline: Container(),
                      // elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueTime = newValue;
                        });
                      },
                      items: <String>['week', 'month', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                flex: 2,
              ),
            ],
          ),
          new SizedBox(
            height: 10,
          ),
          new Row(
            children: <Widget>[
              new Text(
                "Export",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new SizedBox(
                width: 10,
              ),
              Radio(
                activeColor: Colors.orange,
                value: 1,
                onChanged: (val) => setState(() => val = val),
                groupValue: null,
              ),
              new SizedBox(
                width: 5,
              ),
              Text("Yes"),
              new SizedBox(
                width: 10,
              ),
              Radio(
                activeColor: Colors.orange,
                value: 1,
                onChanged: (val) => setState(() => val = val),
                groupValue: null,
              ),
              new SizedBox(
                width: 5,
              ),
              Text("No"),
            ],
          ),
          new SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _rowPackaging() {
    return new Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Packaging",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
          new SizedBox(
            height: 10,
          ),
          new Row(
            children: <Widget>[
              new Text("Packaging Details",
                  style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              SizedBox(
                width: 10,
              ),
              new Text("(Max 500 Characters)",
                  style: new TextStyle(color: Colors.grey, fontSize: 14)),
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
                hintText: "Input Packaging Details",
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
              )),
          new SizedBox(
            height: 10,
          ),
          new Text("Shipping Weight",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
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
                      hintText: "Input Shipping Weight",
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
                      value: dropdownValueWeight,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      underline: Container(),
                      // elevation: 16,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValueWeight = newValue;
                        });
                      },
                      items: <String>['kg', 'mg', 'Free', 'Four']
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
          new Text("Ex : 100 kg",
              style: new TextStyle(fontSize: 14, color: Colors.grey)),
          new SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _lineHorizontal() {
    return new Container(
      height: 1,
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Title
        title: Text("Product Spesifications"),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed:() => Navigator.pop(context, false),
      ),
      ),
      // Body
      body: Container(
        child: ListView(
          children: <Widget>[
            _rowQuickDetails(),
            _lineHorizontal(),
            _rowSupplyAbility(),
            _lineHorizontal(),
            _rowPackaging(),
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
