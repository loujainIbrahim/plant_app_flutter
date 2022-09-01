import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_flutter/const.dart';

class DetailesRecommandrdScreen extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final String price;
  DetailesRecommandrdScreen(this.image, this.title, this.country, this.price);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            Expanded(
              child: Container(
                height: size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                      onPressed: () {},
                      child: SvgPicture.asset('assets/icons/sun.svg'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset('assets/icons/icon_2.svg'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset('assets/icons/icon_3.svg'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          color: PrimaryColor.withOpacity(0.29),
                          blurRadius: 35)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                width: size.width * 0.75,
                height: size.height * 0.8,
              ),
            ),
          ]),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '$title\n',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: TextColor, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: country,
                      style: TextStyle(
                          color: PrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w300))
                ])),
                Spacer(),
                Text(price,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: PrimaryColor,
                        ))
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                  width: size.width / 2,
                  height: size.height * 0.15,
                  child: Container(
                    decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    alignment: Alignment.center,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )),
              Container(
                width: size.width / 2,
                height: size.height * 0.15,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
