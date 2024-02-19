import 'package:flutter/material.dart';
import 'package:foodapp/pages/home/food%20page%20body.dart';
import 'package:foodapp/pages/popular%20page.dart';

import '../../shared/components/Text.dart';
import '../../shared/components/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List foodImages = [
      'fried chicken.jpg',
      'steak.jpg',
      'healthy food.jpg',
      'see food.jpg',
      'fast food.jpg',
      'snacks.jpg',
    ];




    List foodTexts = [
      'Fried Chicken',
      'Steak',
      'Healthy Food',
      'Sea Food',
      'Fast Food',
      'Snacks'




    ];

    PageController pageController = PageController(
        viewportFraction: .85
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primeColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildText(
                        text: 'Bangladish',
                        color: AppColor.secondColor,
                        size: 20,
                        bold: true,
                      ),
                      Row(
                        children: [
                          BuildText(
                            text: 'Narshingfi',
                            color: AppColor.secondColor,
                            size: 15,
                            bold: true,
                            center: true,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_drop_down))
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.secondColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            const FoodPageBody(),
            SizedBox(
              height: height * .03,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BuildText(
                      text: 'Popular',
                      color: Colors.black,
                      size: 20,
                      bold: true),
                  SizedBox(width: width * .25),
                  BuildText(
                      text: 'Food pairing',
                      color: Colors.grey,
                      size: 15,
                      bold: true),
                ],
              ),
            ),
            SizedBox(
              height: height * .25,
              child: PageView.builder(
                padEnds: false,
                controller: pageController,
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){

                      Navigator.push( context, MaterialPageRoute(builder: (context) {
                        return const PopularPage();
                      },
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      width: width * .8,
                      height: height * .4,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: height * .2,
                              width: width * .4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/" + foodImages[index]),
                                      fit: BoxFit.fitHeight)),
                            ),
                          ),
                          Container(
                            height: height * .15,
                            width: width * .54,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BuildText(
                                    text: foodTexts[index],
                                    color: Colors.black,
                                    bold: true,
                                    size: 25,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    Row(

                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.orangeAccent,
                                          radius: 10,
                                        ),
                                        SizedBox(
                                          width: width * .009,
                                        ),
                                        BuildText(
                                          text: 'normal',
                                          color: Colors.black,
                                          size: 12,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    Row(

                                      children: [
                                        const Icon(Icons.location_pin
                                        , color: Colors.red,),
                                        SizedBox(
                                          width: width * .005,
                                        ),
                                        BuildText(
                                          text: '1.7 km',
                                          color: Colors.black,
                                          size: 12,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    SizedBox(
                                      height: height*.07,
                                    ),
                                    Row(

                                      children: [
                                        const Icon(
                                          Icons.access_time_outlined,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: width * .009,
                                        ),
                                        BuildText(
                                          text: '32 m',
                                          color: Colors.black,
                                          size: 12,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
