import 'package:flutter/material.dart';

class StatusStockPage extends StatefulWidget {
  static String tag = "status-stock-page";
  @override
  StatusStockPageState createState() => StatusStockPageState();
}

class StatusStockPageState extends State<StatusStockPage> {
  // init the step to 0th position
  String dropdownValue = 'Pair';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Title
        title: Text("Status Stock"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      // Body
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _rowStock("Stock Always ready"),
            _rowStock("Stock Limited"),
            Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new SizedBox(
                      height: 10,
                    ),
                    new Text("Stock Total",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    new SizedBox(
                      height: 10,
                    ),
                    new TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(),
                          hintText: "Input Stock Total",
                        )),
                    new SizedBox(
                      height: 10,
                    ),
                    new Text(
                        "Stock will be decrease automatically if product sold ",
                        style: new TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        height: 40.0,
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

  Widget _rowStock(String type) {
    return new Container(
      // height: 50,
      // margin: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: new Row(
                children: <Widget>[
                  Text(type),
                  Spacer(),
                  Radio(
                    activeColor: Colors.orange,
                    value: 1,
                    onChanged: (val) => setState(() => val = val),
                    groupValue: null,
                  ),
                ],
              )),
          new Container(
            height: 1,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
