import 'package:flutter/material.dart';

class ChooseCatalogPage extends StatefulWidget {
  static String tag = "choose-catalog";
  @override
  ChooseCatalogPageState createState() => ChooseCatalogPageState();
}

class ChooseCatalogPageState extends State<ChooseCatalogPage> {
  // init the step to 0th position

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Title
        title: Text("Choose Catalog"),
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
            new Text("You don't have any catalog"),
            new SizedBox(
              height: 10,
            ),
            new Divider(
              height: 20,
              color: Colors.grey[300],
            ),
            new SizedBox(
              height: 10,
            ),
            new GestureDetector(
              child: new Text("+ Add Catalog",
                  style: TextStyle(
                      color: Colors.orange,
                      decoration: TextDecoration.underline)),
              onTap: () {
                return showDialog(
                    context: context,
                    child: Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0.0,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text("Add Catalog"),
                                Spacer(),
                                Icon(Icons.close),
                              ],
                            ),
                            new Divider(
                              height: 10,
                            ),
                            new Text(
                              "Catalog Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                //Add th Hint text here.
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Input Catalog Name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            new SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              child: RaisedButton(
                                child: Text("Add Catalog",
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.green,
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
