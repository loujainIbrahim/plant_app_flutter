

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_flutter/const.dart';
import 'package:plant_app_flutter/detailes_recommanded.dart';

Widget PhotoWithTitle(dynamic size, String title, String price, String Country,BuildContext context,
    String imagee) {
  return GestureDetector(
    onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) 
                =>  DetailesRecommandrdScreen(imagee,title,Country,price)
                ));
              },
    child: Card(
      child: Container(
        width: size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('$imagee'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Text(
                  '$title',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Spacer(),
                Text(
                  '$price',
                  style: TextStyle(color: PrimaryColor),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$Country',
                style: TextStyle(color: PrimaryColor.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
