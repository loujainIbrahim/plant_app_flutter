import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app_flutter/const.dart';

Widget BuildTitleWithCustomerUnderLine(dynamic size,String text) {
  return Container(
    height: size.height * 0.07,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: DefaultPadding ),
      child: Row(children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Spacer(),
        ElevatedButton(onPressed: (){}, child:Text('More'),
        style:ElevatedButton.styleFrom(
          primary: PrimaryColor
        )
        ),
        
      ]),
    ),
  );
}
