import 'package:flutter/material.dart';
import 'package:billgates/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int amount = 100000000000;

  List Datalist = <CardData>[
    c1, c2, c3, c4, c5, c6, c7,
    c8, c9, c10, c11, c12, c13,
    c14, c15, c16, c17, c18, c19,
    c20, c21, c22, c23, c24, c25,
    c26, c27, c28, c29, c30, c31,
    c32, c33, c34, c35, c36, c37,
    c38, c39, c40, c41, c42, c43,
    c44, c45
  ];

  @override
  Widget build(BuildContext context) {
    double theWidth = MediaQuery.of(context).size.width;
    int axisCount = theWidth > 700 ? 3 : 2;
    double divideBy = theWidth > 700 ? 6 : 3.5;
    double fontDivide = theWidth > 700 ? 48 : 34;
    double buttonDivide = theWidth > 700 ? 30 : 25;

    return SafeArea(
      child: Scaffold(
          body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.longestSide / 15,
                backgroundImage: AssetImage('lib/assets/billgates.jpg'),
              ),
            ),
            Text(
              "SPEND BILL GATES' MONEY",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.longestSide / 30),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              color: Colors.greenAccent,
              height: MediaQuery.of(context).size.width / 15,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "\$${amountParser(amount)}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width / 20),
                ),
              ),
            ),
            SizedBox(height: 30),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: axisCount),
                itemCount: Datalist.length,
                itemBuilder: (BuildContext context, int index) => Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(
                          top: 10, bottom: 0, left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          Container(
                            height:
                                (MediaQuery.of(context).size.width / divideBy),
                            width:
                                (MediaQuery.of(context).size.width / divideBy),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          Datalist[index].imageURL))),
                            ),
                          ), // IMAGE
//                        SizedBox(height: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${Datalist[index].name}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width /
                                      fontDivide,
                                ),
                              ),
                              Text(
                                "\$${amountParser(Datalist[index].price)}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.width /
                                      fontDivide,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {

                                    if( Datalist[index].bought > 0 ){
                                      amount += Datalist[index].price;
                                      Datalist[index].bought -= 1;
                                    }

                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Datalist[index].bought>0?
                                              Colors.redAccent:
                                              Colors.grey[700],
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 2, right: 2),
                                  height: MediaQuery.of(context).size.width /
                                      buttonDivide,
                                  width: MediaQuery.of(context).size.width /
                                      (buttonDivide / 2),
                                  child: Center(
                                    child: Text(
                                      "SELL",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  fontDivide -
                                              4),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2)),
                                padding: EdgeInsets.all(4),
                                height: MediaQuery.of(context).size.width / 25,
                                width: MediaQuery.of(context).size.width / 12.5,
                                child: Center(
                                  child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text("${Datalist[index].bought}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      fontDivide -
                                                  4))),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    int p = Datalist[index].price;
                                    if(amount - p >= 0 ){
                                      Datalist[index].bought += 1;
                                      amount -= p;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: amount - Datalist[index].price >= 0?
                                             Colors.greenAccent:
                                             Colors.grey[700],
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 2, right: 2),
                                  height: MediaQuery.of(context).size.width /
                                      buttonDivide,
                                  width: MediaQuery.of(context).size.width /
                                      (buttonDivide / 2),
                                  child: Center(
                                    child: Text(
                                      "BUY",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  fontDivide -
                                              4),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ))
          ]),
        ),
      )),
    );
  }
}
