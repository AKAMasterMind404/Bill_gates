import 'package:flutter/material.dart';
import 'package:billgates/data.dart';

import 'models/cardData.dart';

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
                itemBuilder: (BuildContext context, int index) {
                  CardData currCard = Datalist[index];

                  return Container(
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
                          width: (MediaQuery.of(context).size.width / divideBy),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(currCard.imageURL))),
                          ),
                        ), // IMAGE
//                        SizedBox(height: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${currCard.name}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width /
                                    fontDivide,
                              ),
                            ),
                            Text(
                              "\$${amountParser(currCard.price)}",
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
                                  if (currCard.bought > 0) {
                                    amount += currCard.price;
                                    currCard.bought -= 1;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: currCard.bought > 0
                                        ? Colors.redAccent
                                        : Colors.grey[700],
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
                                        fontSize:
                                            MediaQuery.of(context).size.width /
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
                                    child: Text("${currCard.bought}",
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
                                  int p = currCard.price;
                                  if (amount - p >= 0) {
                                    currCard.bought += 1;
                                    amount -= p;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: amount - currCard.price >= 0
                                        ? Colors.greenAccent
                                        : Colors.grey[700],
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
                                        fontSize:
                                            MediaQuery.of(context).size.width /
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
                  );
                })
          ]),
        ),
      )),
    );
  }
}
