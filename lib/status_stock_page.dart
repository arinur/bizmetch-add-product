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
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      // Body
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _rowStock("Stock Always ready"),
            _rowStock("Stock Limited"),
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
          )
        ],
      ),
    );
  }
}
