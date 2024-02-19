import 'package:flutter/material.dart';
import 'package:foodapp/pages/order%20Page.dart';
import 'package:foodapp/shared/components/Text.dart';
import 'package:foodapp/shared/components/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodPageBody extends StatefulWidget {

  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  var currPageValue = 0.0;

  PageController pageController = PageController(
  viewportFraction: .85
  );
  @override
  void initState () {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currPageValue = pageController.page!;
        print(currPageValue);
      });
    });


  }
  @override
  void dispose (){
    pageController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    List ListOfImages = [
      'amircan food.jpg',
      'arabian food.jpg',
      'Chinese Food.jpg',
      'México food.jpg',
      'sweet.jpg'
    ];

    List <String>ListOfTexts = [
     'American Food',
      'Arabian Food',
      'Japanese Food',
      'México Food',
      'Sweet'
    ];


  IndicatorEffect indicatorEffect = CustomizableEffect(dotDecoration: DotDecoration(verticalOffset:15,color: AppColor.secondColor,borderRadius: BorderRadius.circular(20),width: 15,
  height: 17,rotationAngle:360), activeDotDecoration:  DotDecoration(
    color:const Color(0xFFFFAF75),
    rotationAngle: 0,height: 15,
    width: 20,
    borderRadius: BorderRadius.circular(20)

  ));



    return Column(
      children: [
      Container(
      height: height*.42,

      child:
      PageView.builder(
        allowImplicitScrolling: true,
        pageSnapping: true,
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OrderPage();
                },
                )
                );

              },
              child: buildPageItem(index,
                  ListOfImages,
                  height,
                  width,
                  ListOfTexts),
            );
          }),
    ),
        SizedBox(
          height: height*.009,
        ),
        SmoothPageIndicator(

            controller: pageController,  // PageController
            count:  5,

            effect:indicatorEffect,

        ),



      ],
    );
  }

  Widget buildPageItem(int index, List ListOfImages,double width, double height,List ListOfTexts) {
    return Stack(
      children: [
        Container(
          height: height*.77,

          margin: EdgeInsets.only(right: 15, left: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/' + ListOfImages [index],
                  )
              )

          ),

        ),
        Positioned(
          bottom:10,
          right: 20,
          left: 20,

          child: Container(
            height: height*.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.secondColor,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [



                SizedBox(
                 height: height*.024,
                ),
                Row(
                  children: [

                    SizedBox(
                      width: width*.02,
                    ),
                    BuildText(text: ListOfTexts[index].toString(),color: Colors.white,bold: true,size: 20),
                  ],
                ),
                SizedBox(
                  height: height*.017,
                ),
                Row(

                  children: [
                    SizedBox(
                      width: width*.02,
                    ),
                    const Icon(Icons.star,color: Colors.yellow,),
                    const Icon(Icons.star,color: Colors.yellow,),
                    const Icon(Icons.star,color: Colors.yellow,),
                    const Icon(Icons.star,color: Colors.yellow,),
                    const Icon(Icons.star,color: Colors.yellow,),
                    SizedBox(
                      width: width*.02,
                    ),
                    BuildText(text: '4.5',size: 15,color: Colors.white,),
                    SizedBox(
                      width: width*.02,
                    ),
                    BuildText(text: '48 comments',size: 15,color: Colors.white,)

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(

                    children: [
                      SizedBox(
                        width: width*.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.orangeAccent,
                          radius: 10,
                          ),
                          SizedBox(width: width*.009,),
                          BuildText(text: 'normal',color: Colors.white,size: 15,)
                        ],
                      ),
                       SizedBox(
                         width: width*.02,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const Icon(Icons.location_pin),
                          SizedBox(width: width*.005,),
                          BuildText(text: '1.7 km',color: Colors.white,size: 15,)

                        ],
                      ),
                      SizedBox(
                        width: width*.02,
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const Icon(Icons.access_time_outlined,color: Colors.white,),
                          SizedBox(width: width*.009,),
                          BuildText(text: '32 m',color: Colors.white,size: 15,)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]
    );
  }
}
