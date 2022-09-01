import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_flutter/components/components.dart';
import 'package:plant_app_flutter/const.dart';



class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
        BoxShadow(offset: Offset(0, -10),
        blurRadius: 35,
        color: PrimaryColor.withOpacity(0.35))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/flower.svg')),
             IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
             IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/user-icon.svg'))
    
        ],
      ),),
      appBar: BuildAppBar(),
      body:BuildBody(context) ,
    );
  }
}
