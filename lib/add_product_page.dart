import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  static String tag = "add-product";
  @override
  AddProductPageState createState() => AddProductPageState();
}

class AddProductPageState extends State<AddProductPage> {
  // init the step to 0th position
  int current_step = 1;
  int max_step = 3;
  String textButton = "Next";

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          // Appbar
          appBar: AppBar(
            backgroundColor: Colors.white,
            // Title
            title: Text("Add Product"),
             leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed:() => Navigator.pop(context, false),
        )
            
          ),
          // Body
          body: Container(
            margin: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new ScreenProgress(ticks: current_step),
                new SizedBox(
                  height: 18,
                ),
                setView()
                //new ScreenProgress(ticks: current_step),
                //new Container(child: setView()),
                // setView(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
              margin: EdgeInsets.all(10),
              height: 40.0,
              child: new SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: new RaisedButton(
                  color: Colors.green,
                  child: Text(
                    textButton,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    updateSection();
                  },
                ),
              )),
        ));
  }

  Widget setView() {
    if (current_step == 1) {
      return new UploadProductImage();
    } else if (current_step == 2) {
      return new CreateOrChooseCatalog();
    } else {
      textButton = "Add Product";
      return new ProductOverview();
    }
  }

  void updateSection() {
    setState(() {
      if (current_step == max_step) {
        // action after add peoduct

      } else {
        current_step++;
        Navigator.canPop(context);
      }
    });
  }
}

class ProductOverview extends StatelessWidget {
  bool mainProduct = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Product Overview",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Input product overview",
                suffixIcon: Icon(Icons.arrow_right),
              )),
          new SizedBox(
            height: 10,
          ),
          new Text(
              "You will input information about Product Descriptions and Features or Benefits for your product",
              style: new TextStyle(color: Colors.grey, fontSize: 12)),
          new SizedBox(
            height: 10,
          ),
          new Text("Product Spesification",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Input product spesification",
                suffixIcon: Icon(Icons.arrow_right),
              )),
          new SizedBox(
            height: 10,
          ),
          new Text(
              "You will input information about Quick Details, Supply Ability and Packaging for your product",
              style: new TextStyle(color: Colors.grey, fontSize: 12)),
          new SizedBox(
            height: 10,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: mainProduct,
                onChanged: (bool value) {
                  mainProduct = value;
                },
              ),
              new SizedBox(
                width: 10,
              ),
              Text("Main Product"),
            ],
          )
        ],
      ),
    );
  }
}

class CreateOrChooseCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Category",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Choose Category",
                suffixIcon: Icon(Icons.arrow_drop_down),
              )),
          new SizedBox(
            height: 10,
          ),
          new Text("Catalog",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Choose Catalog",
                suffixIcon: Icon(Icons.arrow_right),
              )),
          new SizedBox(
            height: 10,
          ),
          new Text("Price",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Input product price",
                suffixIcon: Icon(Icons.arrow_right),
              )),
          new SizedBox(
            height: 10,
          ),
          new Text("Stock Product",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Input stock of product",
                suffixIcon: Icon(Icons.arrow_right),
              )),
          new SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class UploadProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text("Product Name",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: "Input Product Name",
              )),
          new SizedBox(
            height: 10,
          ),
          new Text("Image Product",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          new SizedBox(
            height: 10,
          ),
          new Text(
              "Upload maksimal 5 image of your product with maksimum size 1500 kb with best ratio 1:1",
              style: new TextStyle(color: Colors.grey, fontSize: 12)),
          new SizedBox(
            height: 10,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Image.asset(
                "assets/images/gambar_plus.png",
                width: 160,
                height: 160,
              ),
              SizedBox(
                width: 10,
              ),
              new Column(
                children: <Widget>[
                  new Image.asset(
                    "assets/images/gambar_plus.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Image.asset(
                    "assets/images/gambar_plus.png",
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              new Column(
                children: <Widget>[
                  new Image.asset(
                    "assets/images/gambar_plus.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Image.asset(
                    "assets/images/gambar_plus.png",
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScreenProgress extends StatelessWidget {
  final int ticks;

  ScreenProgress({@required this.ticks});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            tick1(),
            // spacer(),
            line(),
            // spacer(),
            tick2(),
            //   spacer(),
            line(),
            //  spacer(),
            tick3(),
            //  spacer(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 55,
              child: new Text("Upload Product Image",style: new TextStyle(color: Colors.orange),),
            ),
            new SizedBox(width: 55,),
            Container(
              width: 60,
              child: new Text("Create or Choose Catalog",style: TextStyle(color: Colors.orange),),
            ),
            new SizedBox(width: 55,),
            Container(
              width: 55,
              child: new Text("Product Details",style: TextStyle(color: Colors.orange),),
            ),
          ],
        )
      ],
    );
  }

  Widget tick(bool isChecked, String number) {
    return isChecked
        ? Icon(
            Icons.check_circle,
            color: Colors.orange,
            size: 65,
          )
        : ClipOval(
            child: Container(
              color: Colors.orange,
              height: 55.0, // height of the button
              width: 55.0, // width of the button
              child: Center(
                  child: Text(number,
                      style: new TextStyle(color: Colors.white, fontSize: 30))),
            ),
          );
  }

  Widget tick1() {
    return this.ticks > 0 ? tick(true, "1") : tick(false, "1");
  }

  Widget tick2() {
    return this.ticks > 1 ? tick(true, "2") : tick(false, "2");
  }

  Widget tick3() {
    return this.ticks > 2 ? tick(true, "3") : tick(false, "3");
  }

  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line() {
    return Container(
      color: Colors.orange,
      height: 5.0,
      width: 60.0,
    );
  }
}
