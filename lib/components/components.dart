import 'package:flutter/material.dart';
import 'package:plant_app_flutter/components/body.dart';
import 'package:plant_app_flutter/components/photo_with_title.dart';
import 'package:plant_app_flutter/const.dart';
import 'package:plant_app_flutter/detailes_recommanded.dart';

List l = [
  {
    'title': 'Samantha',
    'price': '\$544',
    'country': 'Russia',
    'image': 'assets/images/image_1.png',
  },
  {
    'title': 'Samantha',
    'price': '\$555',
    'country': 'Eraq',
    'image': 'assets/images/image_2.png',
  },
  {
    'title': 'Samantha',
    'price': '\$988',
    'country': 'Syria',
    'image': 'assets/images/image_3.png',
  }
];
List e = [
  {'image': 'assets/images/bottom_img_1.png'},
  {'image': 'assets/images/bottom_img_2.png'},
];

AppBar BuildAppBar() {
  return AppBar(
    backgroundColor: PrimaryColor,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
    ),
  );
}

Widget BuildBody(context) {
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: DefaultPadding * 2, left: 7),
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
                child: Row(
                  children: [
                    Text(
                      'Hi Uishopy!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Expanded(child: Image.asset('assets/images/logo.png'))
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 54,
                  margin: EdgeInsets.symmetric(horizontal: DefaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: PrimaryColor.withOpacity(0.23))
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'Searsh',
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        BuildTitleWithCustomerUnderLine(size, 'Recommanded'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: size.height * 0.4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int i) => GestureDetector(
              
              child: PhotoWithTitle(size, l[i]['title'], l[i]['price'],
                  l[i]['country'], context,l[i]['image']),
            ),
            itemCount: l.length,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        BuildTitleWithCustomerUnderLine(size, 'Featured Plants'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: size.height * 0.4,
          child: ListView.separated(
              itemBuilder: (context, int i) => Container(
                    child: Image.asset(
                      l[i]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
              itemCount: e.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, int i) => SizedBox(
                    width: size.width * 0.2,
                  )),
        )
      ],
    ),
  );
}
