import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurent_ui_flutter/constants/color_constants.dart';
import 'package:restaurent_ui_flutter/model/card.dart';
import 'package:restaurent_ui_flutter/model/items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            //AppBar
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 10.0, top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('assets/svg/icon_search.svg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search food',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage('assets/images/salman.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Hi Devid !
            Container(
              padding:
                  EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Salman!',
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Give yourself a \nlittle taste!',
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //listView item view
            Container(
              margin: EdgeInsets.only(top: 23.6),
              height: 35.6,
              child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 16.8, right: 9.6),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 19.2),
                      height: 35.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.6),
                        color: current == index
                            ? kGoldColor
                            : Color(populars[index].color),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 5.2,
                            ),
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                populars[index].image,
                                height: 16.8,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              populars[index].text,
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: current == index
                                    ? kWhiteColor
                                    : kBlackColor,
                              ),
                            ),
                            SizedBox(
                              width: 15.2,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            //Burger item list
            Container(
              height: 250,
              width: 344,
              margin: EdgeInsets.only(top: 20.6),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      padding: EdgeInsets.only(top: 20),
                      width: 344,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/card.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    cards[index].image,
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              height: 200,
                              width: 150,
                            ),
                            left: 30,
                            top: -50,
                          ),
                          Positioned(
                            child: Row(children: [
                              Text(
                                '\$',
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor,
                                ),
                              ),
                              Text(
                                cards[index].price,
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor,
                                ),
                              ),
                            ],),
                            right: 37,
                            top: 38,
                          ),

                          Positioned(
                            child: Text(
                              cards[index].burgerName,
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: kBlackColor,
                              ),
                            ),
                            left: 30,
                            bottom: 85,
                          ),
                          Positioned(
                            child: Text(
                              cards[index].burgerDetails,
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            left: 30,
                            bottom: 65,
                          ),
                          Positioned(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/flame.svg',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  cards[index].calories,
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: kRedColor,
                                  ),
                                ),
                              ],
                            ),
                            left: 30,
                            bottom: 40,
                          ),
                          Positioned(
                            child: Container(
                              height: 35.6,
                              width: 35.6,
                              padding: EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffffd461)),
                              child: SvgPicture.asset(
                                  'assets/svg/icon_heart_colored.svg'),
                            ),
                            right: 25,
                            bottom: 40,
                          )
                        ],
                      ),
                    );
                  }),
            ),
//new Item
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'New Item',
                style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
            ),
            //new Item list
            ListView.builder(
                padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 19),
                    height: 81,
                    width: MediaQuery.of(context).size.width - 50,
                    color: kWhiteColor,


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 81,
                          width: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage(cards[index].image)),
                              color: kWhiteColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cards[index].burgerName,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor,
                                ),
                              ),
                              Text(
                                cards[index].burgerDetails,
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: kBlackColor.withOpacity(0.5),
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/flame.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    cards[index].calories,
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: kRedColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: GoogleFonts.inter(
                                      fontSize: 6,
                                      fontWeight: FontWeight.w700,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  Text(
                                    cards[index].price,
                                    style: GoogleFonts.inter(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: kBlackColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 35.6,
                                width: 35.6,
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0x080a0928)),
                                child: SvgPicture.asset(
                                    'assets/svg/icon_heart_colored.svg'),
                              ),
                            ],

                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
